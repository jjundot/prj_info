### Auto create git info for C projects.



#### Usage:

- Set the compiler or ide to execute bulid_pre.sh before build, redirect the output to the header file:

​     	`./build_pre.sh > prj_version.h`

- Include this header file in the project C file:

    `#include "prj_version.h"`

- Use git info macro definition information in the project:

​       `printf("SHA: %s, Build_Time: %s", GIT_INFO, BUILD_TIME);`



#### Note:

- Don't forget to add prj_version.h to .gitignore.