module siege.c.util.plist;

import siege.c.util.list;
import siege.c.common;

extern(C):

// [lower/greater]-[equal/than]
enum
{
    SG_PLIST_LEQ = 1<<0,
    SG_PLIST_LT  = 1<<1,
    SG_PLIST_GEQ = 1<<2,
    SG_PLIST_GT  = 1<<3,
}

// [high/low]-first-[new/old]
enum
{
    SG_PLIST_HFN = SG_PLIST_LEQ,
    SG_PLIST_HFO = SG_PLIST_LT ,
    SG_PLIST_LFN = SG_PLIST_GEQ,
    SG_PLIST_LFO = SG_PLIST_GT ,
}

alias SGList SGPList;

struct SGPItem
{
    float priority;
    void* item;
}

SGPList* sgPListCreate(SGenum flags);
void sgPListDestroy(SGPList* list);
void sgPListEach(SGPList* list, void* data, SGbool (*cb)(SGPList* list, void* item, void* data, size_t i, float p));
void sgPListAdd(SGPList* list, float p, void* item);
void sgPListRemoveIndex(SGPList* list, size_t i);
void sgPListRemoveSlice(SGList* list, size_t i1, size_t i2);
void sgPListRemoveItem(SGPList* list, void* item);
void sgPListRemovePriority(SGPList* list, float p);
void sgPListRemovePSlice(SGList* list, float p1, float p2);

