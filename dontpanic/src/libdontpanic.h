#ifdef __cplusplus
extern "C" {
#endif

#if (defined __WIN32__) || (defined _WIN32) || (defined __CYGWIN__)
/* TODO: proper dll export for MSWin32 */
# define EXTERN extern
#else
# define EXTERN extern
#endif

EXTERN int answer ();

#ifdef __cplusplus
}
#endif
