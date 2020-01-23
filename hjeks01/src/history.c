#include "history.h"
#include "common.h"

#include <stdlib.h>
#include <string.h>

history_meta *first = NULL;
char hbuf[64*8 + sizeof(unsigned long long)];
unsigned long long *bitmap = (unsigned long long *)hbuf;
char *hist = hbuf+sizeof(unsigned long long);

// For returning strings
char *tmpstr = NULL;

history_meta *history_get_first()
{
	return first;
}

int history_num_entries()
{
	history_meta *cur = first;
	int num = 0;
	while(cur) {
		num++;
		cur = cur->next;
	}
	return num;
}

#ifdef DEBUG
void history_debug_bitmap()
{
	unsigned long bmh = (*bitmap >> 32), bml = *bitmap & 0xffffffff;
	int i;
	err("DEBUG - BITMAP:\n\n");
	for(i = 0; i < 32; i++) {
		err("%s", ((bmh&1) ? "1" : "0"));
		bmh >>= 1;
	}
	err("\n");
	for(i = 0; i < 32; i++) {
		err("%s", ((bml&1) ? "1" : "0"));
		bml >>= 1;
	}
	err("\n");
}

void history_debug_blocks()
{
	int i, j;
	char c;
	err("DEBUG - DATABLOCKS:\n\n");
	for(i = 0; i < 64; i++) {
		if(i % 4 == 0) {
			err("##");
		}
		for(j = 0; j < 8; j++) {
			c = hist[(i*8)+j];
			if(c == 0)
				c = ' ';
			fwrite(&c, 1, 1, stderr);
		}
		err("##");
		if(i % 4 == 3)
			err("\n");
	}
}
#endif

const char *history_str(history_meta *ptr)
{
	int i;
	// remove and allocate new
	if(tmpstr)
		free(tmpstr);

	tmpstr = malloc((ptr->len*8)+1);

	// zero terminate for the worst case scenario
	tmpstr[ptr->len*8] = 0;

	// Copy!
	for(i = 0; i < ptr->len; i++) {
		memcpy(tmpstr+(8*i), hist+(ptr->idx[i]*8), 8);
	}

	return tmpstr;
}

void history_delete(history_meta *cur)
{
	history_meta *prev = NULL;
	int i, freed       = 0;
	unsigned char off;

	if(first != cur) {
		prev = first;
		while(prev->next != cur && prev) {
			prev = prev->next;
		}
		if(!prev) {
			err("Error, could not find parent of the node to free\n");
			return;
		}
	}

	for(i = 0; i < cur->len; i++) {
		off      = cur->idx[i];
		*bitmap &= ~((unsigned long long)1 << off);
		memset(hist+(off*8), 0, 8);
		freed++;
	}
	debug("history_delete freed %i blocks\n", freed);

	if(prev == NULL)
		first = cur->next;
	else
		prev->next  = cur->next;

	free(cur);
}

void history_free()
{
	history_meta *last = first;

	while(last->next) {
		last = last->next;
	}
	if(last == NULL) {
		err("Error: history_free called, but there is nothing to free\n");
		return;
	}
	history_delete(last);
}

void history_store(const char *str)
{
	history_meta *meta = malloc(sizeof(history_meta));
	int len, i;

	meta->next = first;
	meta->len = 0;

	// Calculate number of blocks to allocate
	len = strlen(str);
	if(len % 8)
		len = len + 8 - (len % 8);
	len = len / 8;
	if(len > 15)
		len = 15;

	// Make sure enough blocks are available
	while(history_freeblocks() < len)
		history_free();

	for(i = 0; i < 64 && len; i++) {
		// Skip used blocks
		if(*bitmap & ((unsigned long long)1 << i)) continue;

		meta->idx[meta->len++] = i;
		*bitmap |= ((unsigned long long)1 << i);
		len--;

		// off
		if(strlen(str) >= 8) {
			memcpy(hist+(i*8), str, 8);
			str += 8;
		} else {
			memset(hist+(i*8), 0, 8);
			memcpy(hist+(i*8), str, strlen(str));
			str += strlen(str);
		}
	}
	first = meta;
}

int history_freeblocks()
{
	int free = 0;
	unsigned long long map = ~*bitmap;
	while(map) {
		if(map & 1)
			free++;
		map = map>>1;
	}
	return free;
}

void history_destroy()
{
	history_meta *tmp;
	while(first) {
		tmp   = first;
		first = tmp->next;
		free(tmp);
	}
	if(tmpstr)
		free(tmpstr);
	tmpstr = NULL;
	bitmap = 0;
}

