#ifndef UTILS_H
#define UTILS_H
#ifndef UNICODE
#define UNICODE
#define UNICODE_WAS_UNDEFINED
#endif

#include <Windows.h>

#ifdef UNICODE_WAS_UNDEFINED
#undef UNICODE
#endif

namespace Utils {

HWND GetWorkerW();
}
#endif // UTILS_H
