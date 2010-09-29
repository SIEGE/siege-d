module siege.c.core.window;

import siege.c.common;
import siege.c.modules.window;

import std.stdarg;

extern(C):

void _sg_cbWindowOpen(void* window);
void _sg_cbWindowClose(void* window);
void _sg_cbWindowResize(void* window, SGuint width, SGuint height);

SGbool _sgWindowInit();
SGbool _sgWindowDeinit();
SGbool sgWindowOpen(SGuint width, SGuint height, SGuint bpp, SGenum flags);
SGbool sgWindowIsOpened();
void sgWindowClose();

void sgWindowSetTitleF(char* format, ...);
void sgWindowSetTitleFV(char* format, va_list args);
void sgWindowSetTitle(char* title);
char* sgWindowGetTitle();

void sgWindowSetSize(SGuint width, SGuint height);
void sgWindowGetSize(SGuint* width, SGuint* height);

void sgWindowSetWidth(SGuint width);
SGuint sgWindowGetWidth();
void sgWindowSetHeight(SGuint height);
SGuint sgWindowGetHeight();

void sgWindowSwapBuffers();

void* sgWindowGetHandle();
void* sgWindowGetGHandle();
