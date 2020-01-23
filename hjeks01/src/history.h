#ifndef __HISTORY_H
#define __HISTORY_H
typedef struct history_meta_t history_meta;

struct history_meta_t {
	history_meta *next;
	int           len;

	// pointer to right block
	unsigned char idx[15];
};

history_meta* history_get_first();
int           history_num_entries();
int           history_freeblocks();
void          history_store(const char *str);
const char*   history_str(history_meta *ptr);
void          history_free();
void          history_delete(history_meta *ptr);
void          history_destroy();
#ifdef DEBUG
void          history_debug_bitmap();
void          history_debug_blocks();
#endif

#endif

