
echo -e "#ifndef __PRJ_VERSION_H__\r\n#define __PRJ_VERSION_H__\r\n\r\n"

printf "#define GIT_INFO      \"SHA:%s,UNVER:%d\" " `git log -n1 --pretty=%h` `git status --porcelain | grep -E "[^M]|[^??]"| wc -l`
echo -e


date  "+#define BUILD_TIME    \"%Y:%m:%d-%H:%M:%S\" " 
echo -e 

echo -e "#endif\r\n" 

