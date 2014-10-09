#ifdef __cplusplus
extern "C" {
#endif

#if ((defined __WIN32__) || (defined _WIN32) || (defined __CYGWIN__)) && (!defined DONTPANIC_STATIC)
#  ifdef __DONTPANIC_BUILD
#    ifdef __GNUC__
#      define EXTERN __attribute__((dllexport)) extern
#    else
#      define EXTERN __declspec(dllexport)
#    endif
#  else
#    ifdef __GNUC__
#      define EXTERN
#    else
#      define EXTERN __declspec(dllimport)
#    endif
#  endif
#else
#  define EXTERN extern
#endif

EXTERN int answer ();

#ifdef __cplusplus
}
#endif
