
_find:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
        }
    }
    close(fd);
    exit();
}
int main(int argc, char *argv[]) {  
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	53                   	push   %ebx
   e:	51                   	push   %ecx
   f:	8b 01                	mov    (%ecx),%eax
  11:	8b 59 04             	mov    0x4(%ecx),%ebx
    if(argc==1){
  14:	83 f8 01             	cmp    $0x1,%eax
  17:	74 22                	je     3b <main+0x3b>
        printf(2,"please give the path to find the file\n");   
        exit();
    }
    else if(argc==2){
  19:	83 f8 02             	cmp    $0x2,%eax
  1c:	74 65                	je     83 <main+0x83>
        printf(2,"please give the file name \n");
        exit();
    }
    else if(argc==3){
  1e:	83 f8 03             	cmp    $0x3,%eax
  21:	74 73                	je     96 <main+0x96>
        printf(1,"please give the file name after -name\n");
        exit();
    }
    else if(argc==4 && strcmp(argv[2],"-name")==0){                                    //for default find
  23:	83 f8 04             	cmp    $0x4,%eax
  26:	74 26                	je     4e <main+0x4e>
        findname(argv[1],argv[3],0,"","");
    }
    else if(argc==5 && strcmp(argv[2],"-name")==0 &&strcmp(argv[4],"-printi")==0){    //for -printi flag
  28:	83 f8 05             	cmp    $0x5,%eax
  2b:	74 7c                	je     a9 <main+0xa9>
        findname(argv[1],argv[3],1,"","");
    }
    else if(argc==6 && strcmp(argv[2],"-name")==0 &&strcmp(argv[4],"-type")==0){     //for -type flag
  2d:	83 f8 06             	cmp    $0x6,%eax
  30:	0f 84 c9 00 00 00    	je     ff <main+0xff>
        findname(argv[1],argv[3],0,argv[5],"");
    }
    else if(argc==6 && strcmp(argv[2],"-name")==0 &&strcmp(argv[4],"-inum")==0){     //for -inum flag
        findname(argv[1],argv[3],0,"",argv[5]);
    }
    exit();
  36:	e8 98 08 00 00       	call   8d3 <exit>
        printf(2,"please give the path to find the file\n");   
  3b:	51                   	push   %ecx
  3c:	51                   	push   %ecx
  3d:	68 e0 0d 00 00       	push   $0xde0
  42:	6a 02                	push   $0x2
  44:	e8 e7 09 00 00       	call   a30 <printf>
        exit();
  49:	e8 85 08 00 00       	call   8d3 <exit>
    else if(argc==4 && strcmp(argv[2],"-name")==0){                                    //for default find
  4e:	50                   	push   %eax
  4f:	50                   	push   %eax
  50:	68 c3 0d 00 00       	push   $0xdc3
  55:	ff 73 08             	push   0x8(%ebx)
  58:	e8 53 06 00 00       	call   6b0 <strcmp>
  5d:	83 c4 10             	add    $0x10,%esp
  60:	85 c0                	test   %eax,%eax
  62:	75 d2                	jne    36 <main+0x36>
        findname(argv[1],argv[3],0,"","");
  64:	83 ec 0c             	sub    $0xc,%esp
  67:	68 c2 0d 00 00       	push   $0xdc2
        findname(argv[1],argv[3],0,"",argv[5]);
  6c:	68 c2 0d 00 00       	push   $0xdc2
  71:	6a 00                	push   $0x0
  73:	ff 73 0c             	push   0xc(%ebx)
  76:	ff 73 04             	push   0x4(%ebx)
  79:	e8 02 01 00 00       	call   180 <findname>
  7e:	83 c4 20             	add    $0x20,%esp
  81:	eb b3                	jmp    36 <main+0x36>
        printf(2,"please give the file name \n");
  83:	52                   	push   %edx
  84:	52                   	push   %edx
  85:	68 a7 0d 00 00       	push   $0xda7
  8a:	6a 02                	push   $0x2
  8c:	e8 9f 09 00 00       	call   a30 <printf>
        exit();
  91:	e8 3d 08 00 00       	call   8d3 <exit>
        printf(1,"please give the file name after -name\n");
  96:	50                   	push   %eax
  97:	50                   	push   %eax
  98:	68 08 0e 00 00       	push   $0xe08
  9d:	6a 01                	push   $0x1
  9f:	e8 8c 09 00 00       	call   a30 <printf>
        exit();
  a4:	e8 2a 08 00 00       	call   8d3 <exit>
    else if(argc==5 && strcmp(argv[2],"-name")==0 &&strcmp(argv[4],"-printi")==0){    //for -printi flag
  a9:	50                   	push   %eax
  aa:	50                   	push   %eax
  ab:	68 c3 0d 00 00       	push   $0xdc3
  b0:	ff 73 08             	push   0x8(%ebx)
  b3:	e8 f8 05 00 00       	call   6b0 <strcmp>
  b8:	83 c4 10             	add    $0x10,%esp
  bb:	85 c0                	test   %eax,%eax
  bd:	0f 85 73 ff ff ff    	jne    36 <main+0x36>
  c3:	50                   	push   %eax
  c4:	50                   	push   %eax
  c5:	68 c9 0d 00 00       	push   $0xdc9
  ca:	ff 73 10             	push   0x10(%ebx)
  cd:	e8 de 05 00 00       	call   6b0 <strcmp>
  d2:	83 c4 10             	add    $0x10,%esp
  d5:	85 c0                	test   %eax,%eax
  d7:	0f 85 59 ff ff ff    	jne    36 <main+0x36>
        findname(argv[1],argv[3],1,"","");
  dd:	83 ec 0c             	sub    $0xc,%esp
  e0:	68 c2 0d 00 00       	push   $0xdc2
  e5:	68 c2 0d 00 00       	push   $0xdc2
  ea:	6a 01                	push   $0x1
  ec:	ff 73 0c             	push   0xc(%ebx)
  ef:	ff 73 04             	push   0x4(%ebx)
  f2:	e8 89 00 00 00       	call   180 <findname>
  f7:	83 c4 20             	add    $0x20,%esp
  fa:	e9 37 ff ff ff       	jmp    36 <main+0x36>
    else if(argc==6 && strcmp(argv[2],"-name")==0 &&strcmp(argv[4],"-type")==0){     //for -type flag
  ff:	50                   	push   %eax
 100:	50                   	push   %eax
 101:	68 c3 0d 00 00       	push   $0xdc3
 106:	ff 73 08             	push   0x8(%ebx)
 109:	e8 a2 05 00 00       	call   6b0 <strcmp>
 10e:	83 c4 10             	add    $0x10,%esp
 111:	85 c0                	test   %eax,%eax
 113:	74 3f                	je     154 <main+0x154>
    else if(argc==6 && strcmp(argv[2],"-name")==0 &&strcmp(argv[4],"-inum")==0){     //for -inum flag
 115:	50                   	push   %eax
 116:	50                   	push   %eax
 117:	68 c3 0d 00 00       	push   $0xdc3
 11c:	ff 73 08             	push   0x8(%ebx)
 11f:	e8 8c 05 00 00       	call   6b0 <strcmp>
 124:	83 c4 10             	add    $0x10,%esp
 127:	85 c0                	test   %eax,%eax
 129:	0f 85 07 ff ff ff    	jne    36 <main+0x36>
 12f:	52                   	push   %edx
 130:	52                   	push   %edx
 131:	68 d7 0d 00 00       	push   $0xdd7
 136:	ff 73 10             	push   0x10(%ebx)
 139:	e8 72 05 00 00       	call   6b0 <strcmp>
 13e:	83 c4 10             	add    $0x10,%esp
 141:	85 c0                	test   %eax,%eax
 143:	0f 85 ed fe ff ff    	jne    36 <main+0x36>
        findname(argv[1],argv[3],0,"",argv[5]);
 149:	83 ec 0c             	sub    $0xc,%esp
 14c:	ff 73 14             	push   0x14(%ebx)
 14f:	e9 18 ff ff ff       	jmp    6c <main+0x6c>
    else if(argc==6 && strcmp(argv[2],"-name")==0 &&strcmp(argv[4],"-type")==0){     //for -type flag
 154:	51                   	push   %ecx
 155:	51                   	push   %ecx
 156:	68 d1 0d 00 00       	push   $0xdd1
 15b:	ff 73 10             	push   0x10(%ebx)
 15e:	e8 4d 05 00 00       	call   6b0 <strcmp>
 163:	83 c4 10             	add    $0x10,%esp
 166:	85 c0                	test   %eax,%eax
 168:	75 ab                	jne    115 <main+0x115>
        findname(argv[1],argv[3],0,argv[5],"");
 16a:	83 ec 0c             	sub    $0xc,%esp
 16d:	68 c2 0d 00 00       	push   $0xdc2
 172:	ff 73 14             	push   0x14(%ebx)
 175:	e9 f7 fe ff ff       	jmp    71 <main+0x71>
 17a:	66 90                	xchg   %ax,%ax
 17c:	66 90                	xchg   %ax,%ax
 17e:	66 90                	xchg   %ax,%ax

00000180 <findname>:
void findname(char *path,char* name, int printi,char* type,char* ino){
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	57                   	push   %edi
 184:	56                   	push   %esi
 185:	53                   	push   %ebx
 186:	81 ec 64 02 00 00    	sub    $0x264,%esp
 18c:	8b 45 0c             	mov    0xc(%ebp),%eax
 18f:	8b 75 08             	mov    0x8(%ebp),%esi
    if((fd = open(path, 0)) < 0){
 192:	6a 00                	push   $0x0
void findname(char *path,char* name, int printi,char* type,char* ino){
 194:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%ebp)
 19a:	8b 45 10             	mov    0x10(%ebp),%eax
    if((fd = open(path, 0)) < 0){
 19d:	56                   	push   %esi
void findname(char *path,char* name, int printi,char* type,char* ino){
 19e:	89 85 ac fd ff ff    	mov    %eax,-0x254(%ebp)
 1a4:	8b 45 14             	mov    0x14(%ebp),%eax
 1a7:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%ebp)
 1ad:	8b 45 18             	mov    0x18(%ebp),%eax
 1b0:	89 85 b0 fd ff ff    	mov    %eax,-0x250(%ebp)
    if((fd = open(path, 0)) < 0){
 1b6:	e8 58 07 00 00       	call   913 <open>
 1bb:	83 c4 10             	add    $0x10,%esp
 1be:	85 c0                	test   %eax,%eax
 1c0:	78 4e                	js     210 <findname+0x90>
    if(fstat(fd, &st) < 0){
 1c2:	83 ec 08             	sub    $0x8,%esp
 1c5:	8d bd d4 fd ff ff    	lea    -0x22c(%ebp),%edi
 1cb:	89 c3                	mov    %eax,%ebx
 1cd:	57                   	push   %edi
 1ce:	50                   	push   %eax
 1cf:	e8 57 07 00 00       	call   92b <fstat>
 1d4:	83 c4 10             	add    $0x10,%esp
 1d7:	85 c0                	test   %eax,%eax
 1d9:	78 55                	js     230 <findname+0xb0>
    if(strlen(path) + 1 + DIRSIZ + 1 > sizeof buf){
 1db:	83 ec 0c             	sub    $0xc,%esp
 1de:	56                   	push   %esi
 1df:	e8 2c 05 00 00       	call   710 <strlen>
 1e4:	83 c4 10             	add    $0x10,%esp
 1e7:	83 c0 10             	add    $0x10,%eax
 1ea:	3d 00 02 00 00       	cmp    $0x200,%eax
 1ef:	76 62                	jbe    253 <findname+0xd3>
        printf(1, "find: path too long\n");          
 1f1:	83 ec 08             	sub    $0x8,%esp
 1f4:	68 84 0d 00 00       	push   $0xd84
 1f9:	6a 01                	push   $0x1
 1fb:	e8 30 08 00 00       	call   a30 <printf>
        return;
 200:	83 c4 10             	add    $0x10,%esp
}
 203:	8d 65 f4             	lea    -0xc(%ebp),%esp
 206:	5b                   	pop    %ebx
 207:	5e                   	pop    %esi
 208:	5f                   	pop    %edi
 209:	5d                   	pop    %ebp
 20a:	c3                   	ret    
 20b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 20f:	90                   	nop
    printf(2, "find: cannot open %s\n", path);                       //checks if we can open the file
 210:	89 75 10             	mov    %esi,0x10(%ebp)
 213:	c7 45 0c 58 0d 00 00 	movl   $0xd58,0xc(%ebp)
 21a:	c7 45 08 02 00 00 00 	movl   $0x2,0x8(%ebp)
}
 221:	8d 65 f4             	lea    -0xc(%ebp),%esp
 224:	5b                   	pop    %ebx
 225:	5e                   	pop    %esi
 226:	5f                   	pop    %edi
 227:	5d                   	pop    %ebp
    printf(2, "find: cannot open %s\n", path);                       //checks if we can open the file
 228:	e9 03 08 00 00       	jmp    a30 <printf>
 22d:	8d 76 00             	lea    0x0(%esi),%esi
    printf(2, "find: cannot stat %s\n", path);                       // checks if we can load the contents of the file
 230:	83 ec 04             	sub    $0x4,%esp
 233:	56                   	push   %esi
 234:	68 6e 0d 00 00       	push   $0xd6e
 239:	6a 02                	push   $0x2
 23b:	e8 f0 07 00 00       	call   a30 <printf>
    close(fd);
 240:	89 1c 24             	mov    %ebx,(%esp)
 243:	e8 b3 06 00 00       	call   8fb <close>
    return;
 248:	83 c4 10             	add    $0x10,%esp
}
 24b:	8d 65 f4             	lea    -0xc(%ebp),%esp
 24e:	5b                   	pop    %ebx
 24f:	5e                   	pop    %esi
 250:	5f                   	pop    %edi
 251:	5d                   	pop    %ebp
 252:	c3                   	ret    
    strcpy(buf, path);
 253:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 259:	51                   	push   %ecx
 25a:	51                   	push   %ecx
 25b:	56                   	push   %esi
        memmove(p, de.name, DIRSIZ);
 25c:	8d b5 c6 fd ff ff    	lea    -0x23a(%ebp),%esi
    strcpy(buf, path);
 262:	50                   	push   %eax
 263:	e8 18 04 00 00       	call   680 <strcpy>
    p = buf+strlen(buf);
 268:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 26e:	89 04 24             	mov    %eax,(%esp)
 271:	e8 9a 04 00 00       	call   710 <strlen>
 276:	8d 8d e8 fd ff ff    	lea    -0x218(%ebp),%ecx
 27c:	89 9d a0 fd ff ff    	mov    %ebx,-0x260(%ebp)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){                 //iteratively visits all  the files and directories
 282:	83 c4 10             	add    $0x10,%esp
    p = buf+strlen(buf);
 285:	01 c8                	add    %ecx,%eax
 287:	8b 9d a8 fd ff ff    	mov    -0x258(%ebp),%ebx
    *p++ = '/';
 28d:	8d 48 01             	lea    0x1(%eax),%ecx
    p = buf+strlen(buf);
 290:	89 85 9c fd ff ff    	mov    %eax,-0x264(%ebp)
    *p++ = '/';
 296:	c6 00 2f             	movb   $0x2f,(%eax)
                    int number=atoi(ino+1);
 299:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
    *p++ = '/';
 29f:	89 8d 98 fd ff ff    	mov    %ecx,-0x268(%ebp)
                    int number=atoi(ino+1);
 2a5:	83 c0 01             	add    $0x1,%eax
 2a8:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%ebp)
    while(read(fd, &de, sizeof(de)) == sizeof(de)){                 //iteratively visits all  the files and directories
 2ae:	50                   	push   %eax
 2af:	8d 85 c4 fd ff ff    	lea    -0x23c(%ebp),%eax
 2b5:	6a 10                	push   $0x10
 2b7:	50                   	push   %eax
 2b8:	ff b5 a0 fd ff ff    	push   -0x260(%ebp)
 2be:	e8 28 06 00 00       	call   8eb <read>
 2c3:	83 c4 10             	add    $0x10,%esp
 2c6:	83 f8 10             	cmp    $0x10,%eax
 2c9:	0f 85 a3 00 00 00    	jne    372 <findname+0x1f2>
        if(de.inum==0)
 2cf:	66 83 bd c4 fd ff ff 	cmpw   $0x0,-0x23c(%ebp)
 2d6:	00 
 2d7:	74 d5                	je     2ae <findname+0x12e>
        memmove(p, de.name, DIRSIZ);
 2d9:	51                   	push   %ecx
 2da:	6a 0e                	push   $0xe
 2dc:	56                   	push   %esi
 2dd:	ff b5 98 fd ff ff    	push   -0x268(%ebp)
 2e3:	e8 b8 05 00 00       	call   8a0 <memmove>
        p[DIRSIZ] = 0;
 2e8:	8b 85 9c fd ff ff    	mov    -0x264(%ebp),%eax
 2ee:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
        if(stat(buf, &st) < 0){
 2f2:	58                   	pop    %eax
 2f3:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 2f9:	5a                   	pop    %edx
 2fa:	57                   	push   %edi
 2fb:	50                   	push   %eax
 2fc:	e8 0f 05 00 00       	call   810 <stat>
 301:	83 c4 10             	add    $0x10,%esp
 304:	85 c0                	test   %eax,%eax
 306:	0f 88 0e 01 00 00    	js     41a <findname+0x29a>
        if(strcmp(type,"f")==0){                                    //function for -type flag for file
 30c:	50                   	push   %eax
 30d:	50                   	push   %eax
 30e:	68 99 0d 00 00       	push   $0xd99
 313:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 319:	e8 92 03 00 00       	call   6b0 <strcmp>
 31e:	83 c4 10             	add    $0x10,%esp
 321:	85 c0                	test   %eax,%eax
 323:	75 61                	jne    386 <findname+0x206>
            if(st.type==2){
 325:	0f b7 85 d4 fd ff ff 	movzwl -0x22c(%ebp),%eax
 32c:	66 83 f8 02          	cmp    $0x2,%ax
 330:	0f 84 aa 01 00 00    	je     4e0 <findname+0x360>
            else if(st.type==1){
 336:	66 83 e8 01          	sub    $0x1,%ax
 33a:	0f 85 6e ff ff ff    	jne    2ae <findname+0x12e>
                if(strcmp(de.name,".")!=0 && strcmp(de.name,"..")!=0){
 340:	51                   	push   %ecx
 341:	51                   	push   %ecx
 342:	68 9c 0d 00 00       	push   $0xd9c
 347:	56                   	push   %esi
 348:	e8 63 03 00 00       	call   6b0 <strcmp>
 34d:	83 c4 10             	add    $0x10,%esp
 350:	85 c0                	test   %eax,%eax
 352:	0f 84 56 ff ff ff    	je     2ae <findname+0x12e>
 358:	52                   	push   %edx
 359:	52                   	push   %edx
 35a:	68 9b 0d 00 00       	push   $0xd9b
 35f:	56                   	push   %esi
 360:	e8 4b 03 00 00       	call   6b0 <strcmp>
 365:	83 c4 10             	add    $0x10,%esp
 368:	85 c0                	test   %eax,%eax
 36a:	0f 84 3e ff ff ff    	je     2ae <findname+0x12e>
 370:	eb 7f                	jmp    3f1 <findname+0x271>
    close(fd);
 372:	8b 9d a0 fd ff ff    	mov    -0x260(%ebp),%ebx
 378:	83 ec 0c             	sub    $0xc,%esp
 37b:	53                   	push   %ebx
 37c:	e8 7a 05 00 00       	call   8fb <close>
    exit();
 381:	e8 4d 05 00 00       	call   8d3 <exit>
        else if(strcmp(type,"d")==0){      //function for -type flag for directory
 386:	50                   	push   %eax
 387:	50                   	push   %eax
 388:	68 9e 0d 00 00       	push   $0xd9e
 38d:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 393:	e8 18 03 00 00       	call   6b0 <strcmp>
 398:	83 c4 10             	add    $0x10,%esp
 39b:	85 c0                	test   %eax,%eax
 39d:	0f 85 ac 00 00 00    	jne    44f <findname+0x2cf>
            if(st.type==1){
 3a3:	66 83 bd d4 fd ff ff 	cmpw   $0x1,-0x22c(%ebp)
 3aa:	01 
 3ab:	0f 85 fd fe ff ff    	jne    2ae <findname+0x12e>
                if(strcmp(de.name,".")!=0 && strcmp(de.name,"..")!=0){
 3b1:	50                   	push   %eax
 3b2:	50                   	push   %eax
 3b3:	68 9c 0d 00 00       	push   $0xd9c
 3b8:	56                   	push   %esi
 3b9:	e8 f2 02 00 00       	call   6b0 <strcmp>
 3be:	83 c4 10             	add    $0x10,%esp
 3c1:	85 c0                	test   %eax,%eax
 3c3:	0f 84 e5 fe ff ff    	je     2ae <findname+0x12e>
 3c9:	50                   	push   %eax
 3ca:	50                   	push   %eax
 3cb:	68 9b 0d 00 00       	push   $0xd9b
 3d0:	56                   	push   %esi
 3d1:	e8 da 02 00 00       	call   6b0 <strcmp>
 3d6:	83 c4 10             	add    $0x10,%esp
 3d9:	85 c0                	test   %eax,%eax
 3db:	0f 84 cd fe ff ff    	je     2ae <findname+0x12e>
                    if(strcmp(de.name,name)==0){
 3e1:	50                   	push   %eax
 3e2:	50                   	push   %eax
 3e3:	53                   	push   %ebx
 3e4:	56                   	push   %esi
 3e5:	e8 c6 02 00 00       	call   6b0 <strcmp>
 3ea:	83 c4 10             	add    $0x10,%esp
 3ed:	85 c0                	test   %eax,%eax
 3ef:	74 45                	je     436 <findname+0x2b6>
                findname(buf,name,printi,type,"");
 3f1:	83 ec 0c             	sub    $0xc,%esp
 3f4:	68 c2 0d 00 00       	push   $0xdc2
                        findname(buf,name,printi,type,ino);
 3f9:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 3ff:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 405:	ff b5 ac fd ff ff    	push   -0x254(%ebp)
 40b:	53                   	push   %ebx
 40c:	50                   	push   %eax
 40d:	e8 6e fd ff ff       	call   180 <findname>
 412:	83 c4 20             	add    $0x20,%esp
 415:	e9 94 fe ff ff       	jmp    2ae <findname+0x12e>
            printf(1, "find: cannot stat %s\n", buf);
 41a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 420:	52                   	push   %edx
 421:	50                   	push   %eax
 422:	68 6e 0d 00 00       	push   $0xd6e
 427:	6a 01                	push   $0x1
 429:	e8 02 06 00 00       	call   a30 <printf>
            continue;
 42e:	83 c4 10             	add    $0x10,%esp
 431:	e9 78 fe ff ff       	jmp    2ae <findname+0x12e>
                     printf(1,"%s\n",buf);   
 436:	50                   	push   %eax
 437:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 43d:	50                   	push   %eax
 43e:	68 a3 0d 00 00       	push   $0xda3
 443:	6a 01                	push   $0x1
 445:	e8 e6 05 00 00       	call   a30 <printf>
 44a:	83 c4 10             	add    $0x10,%esp
 44d:	eb a2                	jmp    3f1 <findname+0x271>
        else if(ino[0]!='\0'){
 44f:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
 455:	80 38 00             	cmpb   $0x0,(%eax)
 458:	0f 84 46 01 00 00    	je     5a4 <findname+0x424>
            if(strcmp(de.name,".")!=0 && strcmp(de.name,"..")!=0){
 45e:	51                   	push   %ecx
 45f:	51                   	push   %ecx
 460:	68 9c 0d 00 00       	push   $0xd9c
 465:	56                   	push   %esi
 466:	e8 45 02 00 00       	call   6b0 <strcmp>
 46b:	83 c4 10             	add    $0x10,%esp
 46e:	85 c0                	test   %eax,%eax
 470:	0f 84 38 fe ff ff    	je     2ae <findname+0x12e>
 476:	52                   	push   %edx
 477:	52                   	push   %edx
 478:	68 9b 0d 00 00       	push   $0xd9b
 47d:	56                   	push   %esi
 47e:	e8 2d 02 00 00       	call   6b0 <strcmp>
 483:	83 c4 10             	add    $0x10,%esp
 486:	85 c0                	test   %eax,%eax
 488:	0f 84 20 fe ff ff    	je     2ae <findname+0x12e>
                if(ino[0]=='+'){                                        //prints the path of file if it exists above that inode number
 48e:	8b 85 b0 fd ff ff    	mov    -0x250(%ebp),%eax
 494:	0f b6 00             	movzbl (%eax),%eax
 497:	3c 2b                	cmp    $0x2b,%al
 499:	0f 84 d4 00 00 00    	je     573 <findname+0x3f3>
                else if(ino[0]=='-'){
 49f:	3c 2d                	cmp    $0x2d,%al
 4a1:	0f 84 99 00 00 00    	je     540 <findname+0x3c0>
                    int number=atoi(ino);
 4a7:	83 ec 0c             	sub    $0xc,%esp
 4aa:	ff b5 b0 fd ff ff    	push   -0x250(%ebp)
 4b0:	e8 ab 03 00 00       	call   860 <atoi>
                    if((st.ino==number) && strcmp(name,de.name)==0){    //prints the path of file if the inode number matches
 4b5:	83 c4 10             	add    $0x10,%esp
 4b8:	39 85 dc fd ff ff    	cmp    %eax,-0x224(%ebp)
 4be:	0f 84 99 00 00 00    	je     55d <findname+0x3dd>
                    else if(st.type==1){
 4c4:	66 83 bd d4 fd ff ff 	cmpw   $0x1,-0x22c(%ebp)
 4cb:	01 
 4cc:	0f 85 dc fd ff ff    	jne    2ae <findname+0x12e>
                        findname(buf,name,printi,type,ino);
 4d2:	83 ec 0c             	sub    $0xc,%esp
 4d5:	ff b5 b0 fd ff ff    	push   -0x250(%ebp)
 4db:	e9 19 ff ff ff       	jmp    3f9 <findname+0x279>
                if(strcmp(de.name,".")!=0 && strcmp(de.name,"..")!=0){
 4e0:	50                   	push   %eax
 4e1:	50                   	push   %eax
 4e2:	68 9c 0d 00 00       	push   $0xd9c
 4e7:	56                   	push   %esi
 4e8:	e8 c3 01 00 00       	call   6b0 <strcmp>
 4ed:	83 c4 10             	add    $0x10,%esp
 4f0:	85 c0                	test   %eax,%eax
 4f2:	0f 84 b6 fd ff ff    	je     2ae <findname+0x12e>
 4f8:	50                   	push   %eax
 4f9:	50                   	push   %eax
 4fa:	68 9b 0d 00 00       	push   $0xd9b
 4ff:	56                   	push   %esi
 500:	e8 ab 01 00 00       	call   6b0 <strcmp>
 505:	83 c4 10             	add    $0x10,%esp
 508:	85 c0                	test   %eax,%eax
 50a:	0f 84 9e fd ff ff    	je     2ae <findname+0x12e>
                    if(strcmp(de.name,name)==0){
 510:	50                   	push   %eax
 511:	50                   	push   %eax
 512:	53                   	push   %ebx
 513:	56                   	push   %esi
 514:	e8 97 01 00 00       	call   6b0 <strcmp>
 519:	83 c4 10             	add    $0x10,%esp
 51c:	85 c0                	test   %eax,%eax
 51e:	0f 85 8a fd ff ff    	jne    2ae <findname+0x12e>
                        printf(1,"%s\n",buf);
 524:	50                   	push   %eax
 525:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 52b:	50                   	push   %eax
 52c:	68 a3 0d 00 00       	push   $0xda3
 531:	6a 01                	push   $0x1
 533:	e8 f8 04 00 00       	call   a30 <printf>
 538:	83 c4 10             	add    $0x10,%esp
 53b:	e9 6e fd ff ff       	jmp    2ae <findname+0x12e>
                    int number=atoi(ino+1);
 540:	83 ec 0c             	sub    $0xc,%esp
 543:	ff b5 a4 fd ff ff    	push   -0x25c(%ebp)
 549:	e8 12 03 00 00       	call   860 <atoi>
                    if(st.ino<number && strcmp(name,de.name)==0){       //prints the path of file if it exists below that inode number
 54e:	83 c4 10             	add    $0x10,%esp
 551:	39 85 dc fd ff ff    	cmp    %eax,-0x224(%ebp)
 557:	0f 83 67 ff ff ff    	jae    4c4 <findname+0x344>
                    if((st.ino==number) && strcmp(name,de.name)==0){    //prints the path of file if the inode number matches
 55d:	50                   	push   %eax
 55e:	50                   	push   %eax
 55f:	56                   	push   %esi
 560:	53                   	push   %ebx
 561:	e8 4a 01 00 00       	call   6b0 <strcmp>
 566:	83 c4 10             	add    $0x10,%esp
 569:	85 c0                	test   %eax,%eax
 56b:	0f 85 53 ff ff ff    	jne    4c4 <findname+0x344>
 571:	eb b1                	jmp    524 <findname+0x3a4>
                    int number=atoi(ino+1);
 573:	83 ec 0c             	sub    $0xc,%esp
 576:	ff b5 a4 fd ff ff    	push   -0x25c(%ebp)
 57c:	e8 df 02 00 00       	call   860 <atoi>
                    if(st.type==2){
 581:	0f b7 95 d4 fd ff ff 	movzwl -0x22c(%ebp),%edx
 588:	83 c4 10             	add    $0x10,%esp
 58b:	66 83 fa 02          	cmp    $0x2,%dx
 58f:	0f 84 9f 00 00 00    	je     634 <findname+0x4b4>
                    else if(st.type==1){
 595:	66 83 ea 01          	sub    $0x1,%dx
 599:	0f 85 0f fd ff ff    	jne    2ae <findname+0x12e>
 59f:	e9 2e ff ff ff       	jmp    4d2 <findname+0x352>
        else if(strcmp(type,"")==0){                                    //if type is not specified
 5a4:	50                   	push   %eax
 5a5:	50                   	push   %eax
 5a6:	68 c2 0d 00 00       	push   $0xdc2
 5ab:	ff b5 b4 fd ff ff    	push   -0x24c(%ebp)
 5b1:	e8 fa 00 00 00       	call   6b0 <strcmp>
 5b6:	83 c4 10             	add    $0x10,%esp
 5b9:	85 c0                	test   %eax,%eax
 5bb:	0f 85 ed fc ff ff    	jne    2ae <findname+0x12e>
            if(strcmp(de.name,".")!=0 && strcmp(de.name,"..")!=0){
 5c1:	50                   	push   %eax
 5c2:	50                   	push   %eax
 5c3:	68 9c 0d 00 00       	push   $0xd9c
 5c8:	56                   	push   %esi
 5c9:	e8 e2 00 00 00       	call   6b0 <strcmp>
 5ce:	83 c4 10             	add    $0x10,%esp
 5d1:	85 c0                	test   %eax,%eax
 5d3:	0f 84 d5 fc ff ff    	je     2ae <findname+0x12e>
 5d9:	50                   	push   %eax
 5da:	50                   	push   %eax
 5db:	68 9b 0d 00 00       	push   $0xd9b
 5e0:	56                   	push   %esi
 5e1:	e8 ca 00 00 00       	call   6b0 <strcmp>
 5e6:	83 c4 10             	add    $0x10,%esp
 5e9:	85 c0                	test   %eax,%eax
 5eb:	0f 84 bd fc ff ff    	je     2ae <findname+0x12e>
                    if(strcmp(de.name,name)==0){
 5f1:	51                   	push   %ecx
 5f2:	51                   	push   %ecx
 5f3:	53                   	push   %ebx
 5f4:	56                   	push   %esi
 5f5:	e8 b6 00 00 00       	call   6b0 <strcmp>
 5fa:	83 c4 10             	add    $0x10,%esp
 5fd:	85 c0                	test   %eax,%eax
 5ff:	75 20                	jne    621 <findname+0x4a1>
                        if (printi==1){
 601:	83 bd ac fd ff ff 01 	cmpl   $0x1,-0x254(%ebp)
 608:	74 4f                	je     659 <findname+0x4d9>
                        printf(1,"%s\n",buf);
 60a:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 610:	52                   	push   %edx
 611:	50                   	push   %eax
 612:	68 a3 0d 00 00       	push   $0xda3
 617:	6a 01                	push   $0x1
 619:	e8 12 04 00 00       	call   a30 <printf>
 61e:	83 c4 10             	add    $0x10,%esp
                    if(st.type==1){
 621:	66 83 bd d4 fd ff ff 	cmpw   $0x1,-0x22c(%ebp)
 628:	01 
 629:	0f 85 7f fc ff ff    	jne    2ae <findname+0x12e>
 62f:	e9 bd fd ff ff       	jmp    3f1 <findname+0x271>
                        if(st.ino>number && strcmp(name,de.name)==0){
 634:	39 85 dc fd ff ff    	cmp    %eax,-0x224(%ebp)
 63a:	0f 86 6e fc ff ff    	jbe    2ae <findname+0x12e>
 640:	50                   	push   %eax
 641:	50                   	push   %eax
 642:	56                   	push   %esi
 643:	53                   	push   %ebx
 644:	e8 67 00 00 00       	call   6b0 <strcmp>
 649:	83 c4 10             	add    $0x10,%esp
 64c:	85 c0                	test   %eax,%eax
 64e:	0f 85 5a fc ff ff    	jne    2ae <findname+0x12e>
 654:	e9 cb fe ff ff       	jmp    524 <findname+0x3a4>
                            printf(1,"%d %s\n",st.ino,buf);
 659:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
 65f:	50                   	push   %eax
 660:	ff b5 dc fd ff ff    	push   -0x224(%ebp)
 666:	68 a0 0d 00 00       	push   $0xda0
 66b:	6a 01                	push   $0x1
 66d:	e8 be 03 00 00       	call   a30 <printf>
 672:	83 c4 10             	add    $0x10,%esp
 675:	eb aa                	jmp    621 <findname+0x4a1>
 677:	66 90                	xchg   %ax,%ax
 679:	66 90                	xchg   %ax,%ax
 67b:	66 90                	xchg   %ax,%ax
 67d:	66 90                	xchg   %ax,%ax
 67f:	90                   	nop

00000680 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 680:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 681:	31 c0                	xor    %eax,%eax
{
 683:	89 e5                	mov    %esp,%ebp
 685:	53                   	push   %ebx
 686:	8b 4d 08             	mov    0x8(%ebp),%ecx
 689:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 68c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 690:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 694:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 697:	83 c0 01             	add    $0x1,%eax
 69a:	84 d2                	test   %dl,%dl
 69c:	75 f2                	jne    690 <strcpy+0x10>
    ;
  return os;
}
 69e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6a1:	89 c8                	mov    %ecx,%eax
 6a3:	c9                   	leave  
 6a4:	c3                   	ret    
 6a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000006b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	53                   	push   %ebx
 6b4:	8b 55 08             	mov    0x8(%ebp),%edx
 6b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 6ba:	0f b6 02             	movzbl (%edx),%eax
 6bd:	84 c0                	test   %al,%al
 6bf:	75 17                	jne    6d8 <strcmp+0x28>
 6c1:	eb 3a                	jmp    6fd <strcmp+0x4d>
 6c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 6c7:	90                   	nop
 6c8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 6cc:	83 c2 01             	add    $0x1,%edx
 6cf:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 6d2:	84 c0                	test   %al,%al
 6d4:	74 1a                	je     6f0 <strcmp+0x40>
    p++, q++;
 6d6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 6d8:	0f b6 19             	movzbl (%ecx),%ebx
 6db:	38 c3                	cmp    %al,%bl
 6dd:	74 e9                	je     6c8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 6df:	29 d8                	sub    %ebx,%eax
}
 6e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6e4:	c9                   	leave  
 6e5:	c3                   	ret    
 6e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 6ed:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 6f0:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 6f4:	31 c0                	xor    %eax,%eax
 6f6:	29 d8                	sub    %ebx,%eax
}
 6f8:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 6fb:	c9                   	leave  
 6fc:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 6fd:	0f b6 19             	movzbl (%ecx),%ebx
 700:	31 c0                	xor    %eax,%eax
 702:	eb db                	jmp    6df <strcmp+0x2f>
 704:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 70f:	90                   	nop

00000710 <strlen>:

uint
strlen(const char *s)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 716:	80 3a 00             	cmpb   $0x0,(%edx)
 719:	74 15                	je     730 <strlen+0x20>
 71b:	31 c0                	xor    %eax,%eax
 71d:	8d 76 00             	lea    0x0(%esi),%esi
 720:	83 c0 01             	add    $0x1,%eax
 723:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 727:	89 c1                	mov    %eax,%ecx
 729:	75 f5                	jne    720 <strlen+0x10>
    ;
  return n;
}
 72b:	89 c8                	mov    %ecx,%eax
 72d:	5d                   	pop    %ebp
 72e:	c3                   	ret    
 72f:	90                   	nop
  for(n = 0; s[n]; n++)
 730:	31 c9                	xor    %ecx,%ecx
}
 732:	5d                   	pop    %ebp
 733:	89 c8                	mov    %ecx,%eax
 735:	c3                   	ret    
 736:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi

00000740 <memset>:

void*
memset(void *dst, int c, uint n)
{
 740:	55                   	push   %ebp
 741:	89 e5                	mov    %esp,%ebp
 743:	57                   	push   %edi
 744:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 747:	8b 4d 10             	mov    0x10(%ebp),%ecx
 74a:	8b 45 0c             	mov    0xc(%ebp),%eax
 74d:	89 d7                	mov    %edx,%edi
 74f:	fc                   	cld    
 750:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 752:	8b 7d fc             	mov    -0x4(%ebp),%edi
 755:	89 d0                	mov    %edx,%eax
 757:	c9                   	leave  
 758:	c3                   	ret    
 759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000760 <strchr>:

char*
strchr(const char *s, char c)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	8b 45 08             	mov    0x8(%ebp),%eax
 766:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 76a:	0f b6 10             	movzbl (%eax),%edx
 76d:	84 d2                	test   %dl,%dl
 76f:	75 12                	jne    783 <strchr+0x23>
 771:	eb 1d                	jmp    790 <strchr+0x30>
 773:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 777:	90                   	nop
 778:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 77c:	83 c0 01             	add    $0x1,%eax
 77f:	84 d2                	test   %dl,%dl
 781:	74 0d                	je     790 <strchr+0x30>
    if(*s == c)
 783:	38 d1                	cmp    %dl,%cl
 785:	75 f1                	jne    778 <strchr+0x18>
      return (char*)s;
  return 0;
}
 787:	5d                   	pop    %ebp
 788:	c3                   	ret    
 789:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 790:	31 c0                	xor    %eax,%eax
}
 792:	5d                   	pop    %ebp
 793:	c3                   	ret    
 794:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 79f:	90                   	nop

000007a0 <gets>:

char*
gets(char *buf, int max)
{
 7a0:	55                   	push   %ebp
 7a1:	89 e5                	mov    %esp,%ebp
 7a3:	57                   	push   %edi
 7a4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 7a5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 7a8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 7a9:	31 db                	xor    %ebx,%ebx
{
 7ab:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 7ae:	eb 27                	jmp    7d7 <gets+0x37>
    cc = read(0, &c, 1);
 7b0:	83 ec 04             	sub    $0x4,%esp
 7b3:	6a 01                	push   $0x1
 7b5:	57                   	push   %edi
 7b6:	6a 00                	push   $0x0
 7b8:	e8 2e 01 00 00       	call   8eb <read>
    if(cc < 1)
 7bd:	83 c4 10             	add    $0x10,%esp
 7c0:	85 c0                	test   %eax,%eax
 7c2:	7e 1d                	jle    7e1 <gets+0x41>
      break;
    buf[i++] = c;
 7c4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 7c8:	8b 55 08             	mov    0x8(%ebp),%edx
 7cb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 7cf:	3c 0a                	cmp    $0xa,%al
 7d1:	74 1d                	je     7f0 <gets+0x50>
 7d3:	3c 0d                	cmp    $0xd,%al
 7d5:	74 19                	je     7f0 <gets+0x50>
  for(i=0; i+1 < max; ){
 7d7:	89 de                	mov    %ebx,%esi
 7d9:	83 c3 01             	add    $0x1,%ebx
 7dc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 7df:	7c cf                	jl     7b0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 7e1:	8b 45 08             	mov    0x8(%ebp),%eax
 7e4:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 7e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7eb:	5b                   	pop    %ebx
 7ec:	5e                   	pop    %esi
 7ed:	5f                   	pop    %edi
 7ee:	5d                   	pop    %ebp
 7ef:	c3                   	ret    
  buf[i] = '\0';
 7f0:	8b 45 08             	mov    0x8(%ebp),%eax
 7f3:	89 de                	mov    %ebx,%esi
 7f5:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 7f9:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7fc:	5b                   	pop    %ebx
 7fd:	5e                   	pop    %esi
 7fe:	5f                   	pop    %edi
 7ff:	5d                   	pop    %ebp
 800:	c3                   	ret    
 801:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop

00000810 <stat>:

int
stat(const char *n, struct stat *st)
{
 810:	55                   	push   %ebp
 811:	89 e5                	mov    %esp,%ebp
 813:	56                   	push   %esi
 814:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 815:	83 ec 08             	sub    $0x8,%esp
 818:	6a 00                	push   $0x0
 81a:	ff 75 08             	push   0x8(%ebp)
 81d:	e8 f1 00 00 00       	call   913 <open>
  if(fd < 0)
 822:	83 c4 10             	add    $0x10,%esp
 825:	85 c0                	test   %eax,%eax
 827:	78 27                	js     850 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 829:	83 ec 08             	sub    $0x8,%esp
 82c:	ff 75 0c             	push   0xc(%ebp)
 82f:	89 c3                	mov    %eax,%ebx
 831:	50                   	push   %eax
 832:	e8 f4 00 00 00       	call   92b <fstat>
  close(fd);
 837:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 83a:	89 c6                	mov    %eax,%esi
  close(fd);
 83c:	e8 ba 00 00 00       	call   8fb <close>
  return r;
 841:	83 c4 10             	add    $0x10,%esp
}
 844:	8d 65 f8             	lea    -0x8(%ebp),%esp
 847:	89 f0                	mov    %esi,%eax
 849:	5b                   	pop    %ebx
 84a:	5e                   	pop    %esi
 84b:	5d                   	pop    %ebp
 84c:	c3                   	ret    
 84d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 850:	be ff ff ff ff       	mov    $0xffffffff,%esi
 855:	eb ed                	jmp    844 <stat+0x34>
 857:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 85e:	66 90                	xchg   %ax,%ax

00000860 <atoi>:

int
atoi(const char *s)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	53                   	push   %ebx
 864:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 867:	0f be 02             	movsbl (%edx),%eax
 86a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 86d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 870:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 875:	77 1e                	ja     895 <atoi+0x35>
 877:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 87e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 880:	83 c2 01             	add    $0x1,%edx
 883:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 886:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 88a:	0f be 02             	movsbl (%edx),%eax
 88d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 890:	80 fb 09             	cmp    $0x9,%bl
 893:	76 eb                	jbe    880 <atoi+0x20>
  return n;
}
 895:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 898:	89 c8                	mov    %ecx,%eax
 89a:	c9                   	leave  
 89b:	c3                   	ret    
 89c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000008a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 8a0:	55                   	push   %ebp
 8a1:	89 e5                	mov    %esp,%ebp
 8a3:	57                   	push   %edi
 8a4:	8b 45 10             	mov    0x10(%ebp),%eax
 8a7:	8b 55 08             	mov    0x8(%ebp),%edx
 8aa:	56                   	push   %esi
 8ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 8ae:	85 c0                	test   %eax,%eax
 8b0:	7e 13                	jle    8c5 <memmove+0x25>
 8b2:	01 d0                	add    %edx,%eax
  dst = vdst;
 8b4:	89 d7                	mov    %edx,%edi
 8b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 8c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 8c1:	39 f8                	cmp    %edi,%eax
 8c3:	75 fb                	jne    8c0 <memmove+0x20>
  return vdst;
}
 8c5:	5e                   	pop    %esi
 8c6:	89 d0                	mov    %edx,%eax
 8c8:	5f                   	pop    %edi
 8c9:	5d                   	pop    %ebp
 8ca:	c3                   	ret    

000008cb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 8cb:	b8 01 00 00 00       	mov    $0x1,%eax
 8d0:	cd 40                	int    $0x40
 8d2:	c3                   	ret    

000008d3 <exit>:
SYSCALL(exit)
 8d3:	b8 02 00 00 00       	mov    $0x2,%eax
 8d8:	cd 40                	int    $0x40
 8da:	c3                   	ret    

000008db <wait>:
SYSCALL(wait)
 8db:	b8 03 00 00 00       	mov    $0x3,%eax
 8e0:	cd 40                	int    $0x40
 8e2:	c3                   	ret    

000008e3 <pipe>:
SYSCALL(pipe)
 8e3:	b8 04 00 00 00       	mov    $0x4,%eax
 8e8:	cd 40                	int    $0x40
 8ea:	c3                   	ret    

000008eb <read>:
SYSCALL(read)
 8eb:	b8 05 00 00 00       	mov    $0x5,%eax
 8f0:	cd 40                	int    $0x40
 8f2:	c3                   	ret    

000008f3 <write>:
SYSCALL(write)
 8f3:	b8 10 00 00 00       	mov    $0x10,%eax
 8f8:	cd 40                	int    $0x40
 8fa:	c3                   	ret    

000008fb <close>:
SYSCALL(close)
 8fb:	b8 15 00 00 00       	mov    $0x15,%eax
 900:	cd 40                	int    $0x40
 902:	c3                   	ret    

00000903 <kill>:
SYSCALL(kill)
 903:	b8 06 00 00 00       	mov    $0x6,%eax
 908:	cd 40                	int    $0x40
 90a:	c3                   	ret    

0000090b <exec>:
SYSCALL(exec)
 90b:	b8 07 00 00 00       	mov    $0x7,%eax
 910:	cd 40                	int    $0x40
 912:	c3                   	ret    

00000913 <open>:
SYSCALL(open)
 913:	b8 0f 00 00 00       	mov    $0xf,%eax
 918:	cd 40                	int    $0x40
 91a:	c3                   	ret    

0000091b <mknod>:
SYSCALL(mknod)
 91b:	b8 11 00 00 00       	mov    $0x11,%eax
 920:	cd 40                	int    $0x40
 922:	c3                   	ret    

00000923 <unlink>:
SYSCALL(unlink)
 923:	b8 12 00 00 00       	mov    $0x12,%eax
 928:	cd 40                	int    $0x40
 92a:	c3                   	ret    

0000092b <fstat>:
SYSCALL(fstat)
 92b:	b8 08 00 00 00       	mov    $0x8,%eax
 930:	cd 40                	int    $0x40
 932:	c3                   	ret    

00000933 <link>:
SYSCALL(link)
 933:	b8 13 00 00 00       	mov    $0x13,%eax
 938:	cd 40                	int    $0x40
 93a:	c3                   	ret    

0000093b <mkdir>:
SYSCALL(mkdir)
 93b:	b8 14 00 00 00       	mov    $0x14,%eax
 940:	cd 40                	int    $0x40
 942:	c3                   	ret    

00000943 <chdir>:
SYSCALL(chdir)
 943:	b8 09 00 00 00       	mov    $0x9,%eax
 948:	cd 40                	int    $0x40
 94a:	c3                   	ret    

0000094b <dup>:
SYSCALL(dup)
 94b:	b8 0a 00 00 00       	mov    $0xa,%eax
 950:	cd 40                	int    $0x40
 952:	c3                   	ret    

00000953 <getpid>:
SYSCALL(getpid)
 953:	b8 0b 00 00 00       	mov    $0xb,%eax
 958:	cd 40                	int    $0x40
 95a:	c3                   	ret    

0000095b <sbrk>:
SYSCALL(sbrk)
 95b:	b8 0c 00 00 00       	mov    $0xc,%eax
 960:	cd 40                	int    $0x40
 962:	c3                   	ret    

00000963 <sleep>:
SYSCALL(sleep)
 963:	b8 0d 00 00 00       	mov    $0xd,%eax
 968:	cd 40                	int    $0x40
 96a:	c3                   	ret    

0000096b <uptime>:
SYSCALL(uptime)
 96b:	b8 0e 00 00 00       	mov    $0xe,%eax
 970:	cd 40                	int    $0x40
 972:	c3                   	ret    
 973:	66 90                	xchg   %ax,%ax
 975:	66 90                	xchg   %ax,%ax
 977:	66 90                	xchg   %ax,%ax
 979:	66 90                	xchg   %ax,%ax
 97b:	66 90                	xchg   %ax,%ax
 97d:	66 90                	xchg   %ax,%ax
 97f:	90                   	nop

00000980 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 980:	55                   	push   %ebp
 981:	89 e5                	mov    %esp,%ebp
 983:	57                   	push   %edi
 984:	56                   	push   %esi
 985:	53                   	push   %ebx
 986:	83 ec 3c             	sub    $0x3c,%esp
 989:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 98c:	89 d1                	mov    %edx,%ecx
{
 98e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 991:	85 d2                	test   %edx,%edx
 993:	0f 89 7f 00 00 00    	jns    a18 <printint+0x98>
 999:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 99d:	74 79                	je     a18 <printint+0x98>
    neg = 1;
 99f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 9a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 9a8:	31 db                	xor    %ebx,%ebx
 9aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 9ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 9b0:	89 c8                	mov    %ecx,%eax
 9b2:	31 d2                	xor    %edx,%edx
 9b4:	89 cf                	mov    %ecx,%edi
 9b6:	f7 75 c4             	divl   -0x3c(%ebp)
 9b9:	0f b6 92 90 0e 00 00 	movzbl 0xe90(%edx),%edx
 9c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 9c3:	89 d8                	mov    %ebx,%eax
 9c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 9c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 9cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 9ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 9d1:	76 dd                	jbe    9b0 <printint+0x30>
  if(neg)
 9d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 9d6:	85 c9                	test   %ecx,%ecx
 9d8:	74 0c                	je     9e6 <printint+0x66>
    buf[i++] = '-';
 9da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 9df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 9e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 9e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 9e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 9ed:	eb 07                	jmp    9f6 <printint+0x76>
 9ef:	90                   	nop
    putc(fd, buf[i]);
 9f0:	0f b6 13             	movzbl (%ebx),%edx
 9f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 9f6:	83 ec 04             	sub    $0x4,%esp
 9f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 9fc:	6a 01                	push   $0x1
 9fe:	56                   	push   %esi
 9ff:	57                   	push   %edi
 a00:	e8 ee fe ff ff       	call   8f3 <write>
  while(--i >= 0)
 a05:	83 c4 10             	add    $0x10,%esp
 a08:	39 de                	cmp    %ebx,%esi
 a0a:	75 e4                	jne    9f0 <printint+0x70>
}
 a0c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 a0f:	5b                   	pop    %ebx
 a10:	5e                   	pop    %esi
 a11:	5f                   	pop    %edi
 a12:	5d                   	pop    %ebp
 a13:	c3                   	ret    
 a14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 a18:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 a1f:	eb 87                	jmp    9a8 <printint+0x28>
 a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a28:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a2f:	90                   	nop

00000a30 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 a30:	55                   	push   %ebp
 a31:	89 e5                	mov    %esp,%ebp
 a33:	57                   	push   %edi
 a34:	56                   	push   %esi
 a35:	53                   	push   %ebx
 a36:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 a39:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 a3c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 a3f:	0f b6 13             	movzbl (%ebx),%edx
 a42:	84 d2                	test   %dl,%dl
 a44:	74 6a                	je     ab0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 a46:	8d 45 10             	lea    0x10(%ebp),%eax
 a49:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 a4c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 a4f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 a51:	89 45 d0             	mov    %eax,-0x30(%ebp)
 a54:	eb 36                	jmp    a8c <printf+0x5c>
 a56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 a5d:	8d 76 00             	lea    0x0(%esi),%esi
 a60:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 a63:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 a68:	83 f8 25             	cmp    $0x25,%eax
 a6b:	74 15                	je     a82 <printf+0x52>
  write(fd, &c, 1);
 a6d:	83 ec 04             	sub    $0x4,%esp
 a70:	88 55 e7             	mov    %dl,-0x19(%ebp)
 a73:	6a 01                	push   $0x1
 a75:	57                   	push   %edi
 a76:	56                   	push   %esi
 a77:	e8 77 fe ff ff       	call   8f3 <write>
 a7c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 a7f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 a82:	0f b6 13             	movzbl (%ebx),%edx
 a85:	83 c3 01             	add    $0x1,%ebx
 a88:	84 d2                	test   %dl,%dl
 a8a:	74 24                	je     ab0 <printf+0x80>
    c = fmt[i] & 0xff;
 a8c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 a8f:	85 c9                	test   %ecx,%ecx
 a91:	74 cd                	je     a60 <printf+0x30>
      }
    } else if(state == '%'){
 a93:	83 f9 25             	cmp    $0x25,%ecx
 a96:	75 ea                	jne    a82 <printf+0x52>
      if(c == 'd'){
 a98:	83 f8 25             	cmp    $0x25,%eax
 a9b:	0f 84 07 01 00 00    	je     ba8 <printf+0x178>
 aa1:	83 e8 63             	sub    $0x63,%eax
 aa4:	83 f8 15             	cmp    $0x15,%eax
 aa7:	77 17                	ja     ac0 <printf+0x90>
 aa9:	ff 24 85 38 0e 00 00 	jmp    *0xe38(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 ab0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 ab3:	5b                   	pop    %ebx
 ab4:	5e                   	pop    %esi
 ab5:	5f                   	pop    %edi
 ab6:	5d                   	pop    %ebp
 ab7:	c3                   	ret    
 ab8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 abf:	90                   	nop
  write(fd, &c, 1);
 ac0:	83 ec 04             	sub    $0x4,%esp
 ac3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 ac6:	6a 01                	push   $0x1
 ac8:	57                   	push   %edi
 ac9:	56                   	push   %esi
 aca:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 ace:	e8 20 fe ff ff       	call   8f3 <write>
        putc(fd, c);
 ad3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 ad7:	83 c4 0c             	add    $0xc,%esp
 ada:	88 55 e7             	mov    %dl,-0x19(%ebp)
 add:	6a 01                	push   $0x1
 adf:	57                   	push   %edi
 ae0:	56                   	push   %esi
 ae1:	e8 0d fe ff ff       	call   8f3 <write>
        putc(fd, c);
 ae6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 ae9:	31 c9                	xor    %ecx,%ecx
 aeb:	eb 95                	jmp    a82 <printf+0x52>
 aed:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 af0:	83 ec 0c             	sub    $0xc,%esp
 af3:	b9 10 00 00 00       	mov    $0x10,%ecx
 af8:	6a 00                	push   $0x0
 afa:	8b 45 d0             	mov    -0x30(%ebp),%eax
 afd:	8b 10                	mov    (%eax),%edx
 aff:	89 f0                	mov    %esi,%eax
 b01:	e8 7a fe ff ff       	call   980 <printint>
        ap++;
 b06:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 b0a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b0d:	31 c9                	xor    %ecx,%ecx
 b0f:	e9 6e ff ff ff       	jmp    a82 <printf+0x52>
 b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 b18:	8b 45 d0             	mov    -0x30(%ebp),%eax
 b1b:	8b 10                	mov    (%eax),%edx
        ap++;
 b1d:	83 c0 04             	add    $0x4,%eax
 b20:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 b23:	85 d2                	test   %edx,%edx
 b25:	0f 84 8d 00 00 00    	je     bb8 <printf+0x188>
        while(*s != 0){
 b2b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 b2e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 b30:	84 c0                	test   %al,%al
 b32:	0f 84 4a ff ff ff    	je     a82 <printf+0x52>
 b38:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 b3b:	89 d3                	mov    %edx,%ebx
 b3d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 b40:	83 ec 04             	sub    $0x4,%esp
          s++;
 b43:	83 c3 01             	add    $0x1,%ebx
 b46:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b49:	6a 01                	push   $0x1
 b4b:	57                   	push   %edi
 b4c:	56                   	push   %esi
 b4d:	e8 a1 fd ff ff       	call   8f3 <write>
        while(*s != 0){
 b52:	0f b6 03             	movzbl (%ebx),%eax
 b55:	83 c4 10             	add    $0x10,%esp
 b58:	84 c0                	test   %al,%al
 b5a:	75 e4                	jne    b40 <printf+0x110>
      state = 0;
 b5c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 b5f:	31 c9                	xor    %ecx,%ecx
 b61:	e9 1c ff ff ff       	jmp    a82 <printf+0x52>
 b66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 b6d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 b70:	83 ec 0c             	sub    $0xc,%esp
 b73:	b9 0a 00 00 00       	mov    $0xa,%ecx
 b78:	6a 01                	push   $0x1
 b7a:	e9 7b ff ff ff       	jmp    afa <printf+0xca>
 b7f:	90                   	nop
        putc(fd, *ap);
 b80:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 b83:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 b86:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 b88:	6a 01                	push   $0x1
 b8a:	57                   	push   %edi
 b8b:	56                   	push   %esi
        putc(fd, *ap);
 b8c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 b8f:	e8 5f fd ff ff       	call   8f3 <write>
        ap++;
 b94:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 b98:	83 c4 10             	add    $0x10,%esp
      state = 0;
 b9b:	31 c9                	xor    %ecx,%ecx
 b9d:	e9 e0 fe ff ff       	jmp    a82 <printf+0x52>
 ba2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 ba8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 bab:	83 ec 04             	sub    $0x4,%esp
 bae:	e9 2a ff ff ff       	jmp    add <printf+0xad>
 bb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 bb7:	90                   	nop
          s = "(null)";
 bb8:	ba 2f 0e 00 00       	mov    $0xe2f,%edx
        while(*s != 0){
 bbd:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 bc0:	b8 28 00 00 00       	mov    $0x28,%eax
 bc5:	89 d3                	mov    %edx,%ebx
 bc7:	e9 74 ff ff ff       	jmp    b40 <printf+0x110>
 bcc:	66 90                	xchg   %ax,%ax
 bce:	66 90                	xchg   %ax,%ax

00000bd0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 bd0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 bd1:	a1 88 11 00 00       	mov    0x1188,%eax
{
 bd6:	89 e5                	mov    %esp,%ebp
 bd8:	57                   	push   %edi
 bd9:	56                   	push   %esi
 bda:	53                   	push   %ebx
 bdb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 bde:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 be8:	89 c2                	mov    %eax,%edx
 bea:	8b 00                	mov    (%eax),%eax
 bec:	39 ca                	cmp    %ecx,%edx
 bee:	73 30                	jae    c20 <free+0x50>
 bf0:	39 c1                	cmp    %eax,%ecx
 bf2:	72 04                	jb     bf8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 bf4:	39 c2                	cmp    %eax,%edx
 bf6:	72 f0                	jb     be8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 bf8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 bfb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 bfe:	39 f8                	cmp    %edi,%eax
 c00:	74 30                	je     c32 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 c02:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 c05:	8b 42 04             	mov    0x4(%edx),%eax
 c08:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 c0b:	39 f1                	cmp    %esi,%ecx
 c0d:	74 3a                	je     c49 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 c0f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 c11:	5b                   	pop    %ebx
  freep = p;
 c12:	89 15 88 11 00 00    	mov    %edx,0x1188
}
 c18:	5e                   	pop    %esi
 c19:	5f                   	pop    %edi
 c1a:	5d                   	pop    %ebp
 c1b:	c3                   	ret    
 c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 c20:	39 c2                	cmp    %eax,%edx
 c22:	72 c4                	jb     be8 <free+0x18>
 c24:	39 c1                	cmp    %eax,%ecx
 c26:	73 c0                	jae    be8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 c28:	8b 73 fc             	mov    -0x4(%ebx),%esi
 c2b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 c2e:	39 f8                	cmp    %edi,%eax
 c30:	75 d0                	jne    c02 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 c32:	03 70 04             	add    0x4(%eax),%esi
 c35:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 c38:	8b 02                	mov    (%edx),%eax
 c3a:	8b 00                	mov    (%eax),%eax
 c3c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 c3f:	8b 42 04             	mov    0x4(%edx),%eax
 c42:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 c45:	39 f1                	cmp    %esi,%ecx
 c47:	75 c6                	jne    c0f <free+0x3f>
    p->s.size += bp->s.size;
 c49:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 c4c:	89 15 88 11 00 00    	mov    %edx,0x1188
    p->s.size += bp->s.size;
 c52:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 c55:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 c58:	89 0a                	mov    %ecx,(%edx)
}
 c5a:	5b                   	pop    %ebx
 c5b:	5e                   	pop    %esi
 c5c:	5f                   	pop    %edi
 c5d:	5d                   	pop    %ebp
 c5e:	c3                   	ret    
 c5f:	90                   	nop

00000c60 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 c60:	55                   	push   %ebp
 c61:	89 e5                	mov    %esp,%ebp
 c63:	57                   	push   %edi
 c64:	56                   	push   %esi
 c65:	53                   	push   %ebx
 c66:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c69:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 c6c:	8b 3d 88 11 00 00    	mov    0x1188,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 c72:	8d 70 07             	lea    0x7(%eax),%esi
 c75:	c1 ee 03             	shr    $0x3,%esi
 c78:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 c7b:	85 ff                	test   %edi,%edi
 c7d:	0f 84 9d 00 00 00    	je     d20 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c83:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 c85:	8b 4a 04             	mov    0x4(%edx),%ecx
 c88:	39 f1                	cmp    %esi,%ecx
 c8a:	73 6a                	jae    cf6 <malloc+0x96>
 c8c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 c91:	39 de                	cmp    %ebx,%esi
 c93:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 c96:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 c9d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 ca0:	eb 17                	jmp    cb9 <malloc+0x59>
 ca2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 ca8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 caa:	8b 48 04             	mov    0x4(%eax),%ecx
 cad:	39 f1                	cmp    %esi,%ecx
 caf:	73 4f                	jae    d00 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 cb1:	8b 3d 88 11 00 00    	mov    0x1188,%edi
 cb7:	89 c2                	mov    %eax,%edx
 cb9:	39 d7                	cmp    %edx,%edi
 cbb:	75 eb                	jne    ca8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 cbd:	83 ec 0c             	sub    $0xc,%esp
 cc0:	ff 75 e4             	push   -0x1c(%ebp)
 cc3:	e8 93 fc ff ff       	call   95b <sbrk>
  if(p == (char*)-1)
 cc8:	83 c4 10             	add    $0x10,%esp
 ccb:	83 f8 ff             	cmp    $0xffffffff,%eax
 cce:	74 1c                	je     cec <malloc+0x8c>
  hp->s.size = nu;
 cd0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 cd3:	83 ec 0c             	sub    $0xc,%esp
 cd6:	83 c0 08             	add    $0x8,%eax
 cd9:	50                   	push   %eax
 cda:	e8 f1 fe ff ff       	call   bd0 <free>
  return freep;
 cdf:	8b 15 88 11 00 00    	mov    0x1188,%edx
      if((p = morecore(nunits)) == 0)
 ce5:	83 c4 10             	add    $0x10,%esp
 ce8:	85 d2                	test   %edx,%edx
 cea:	75 bc                	jne    ca8 <malloc+0x48>
        return 0;
  }
}
 cec:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 cef:	31 c0                	xor    %eax,%eax
}
 cf1:	5b                   	pop    %ebx
 cf2:	5e                   	pop    %esi
 cf3:	5f                   	pop    %edi
 cf4:	5d                   	pop    %ebp
 cf5:	c3                   	ret    
    if(p->s.size >= nunits){
 cf6:	89 d0                	mov    %edx,%eax
 cf8:	89 fa                	mov    %edi,%edx
 cfa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 d00:	39 ce                	cmp    %ecx,%esi
 d02:	74 4c                	je     d50 <malloc+0xf0>
        p->s.size -= nunits;
 d04:	29 f1                	sub    %esi,%ecx
 d06:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 d09:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 d0c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 d0f:	89 15 88 11 00 00    	mov    %edx,0x1188
}
 d15:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 d18:	83 c0 08             	add    $0x8,%eax
}
 d1b:	5b                   	pop    %ebx
 d1c:	5e                   	pop    %esi
 d1d:	5f                   	pop    %edi
 d1e:	5d                   	pop    %ebp
 d1f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 d20:	c7 05 88 11 00 00 8c 	movl   $0x118c,0x1188
 d27:	11 00 00 
    base.s.size = 0;
 d2a:	bf 8c 11 00 00       	mov    $0x118c,%edi
    base.s.ptr = freep = prevp = &base;
 d2f:	c7 05 8c 11 00 00 8c 	movl   $0x118c,0x118c
 d36:	11 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 d39:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 d3b:	c7 05 90 11 00 00 00 	movl   $0x0,0x1190
 d42:	00 00 00 
    if(p->s.size >= nunits){
 d45:	e9 42 ff ff ff       	jmp    c8c <malloc+0x2c>
 d4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 d50:	8b 08                	mov    (%eax),%ecx
 d52:	89 0a                	mov    %ecx,(%edx)
 d54:	eb b9                	jmp    d0f <malloc+0xaf>
