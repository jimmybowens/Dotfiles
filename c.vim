"set foldmethod=indent
set showmatch
set matchtime=15
iabbrev #i #include<><esc>i
iabbrev #d #define
iabbrev ' ''<esc>i
iabbrev " ""<esc>i
iabbrev if if()<cr>{<cr><cr>}<esc>bbba
iabbrev { {}<esc>i
iabbrev ( ()<esc>i
iabbrev [ []<esc>i
iabbrev sizeof sizeof()<esc>i
iabbrev break break;
iabbrev continue continue;
iabbrev default default:<cr>
iabbrev for for(;;)<cr>{<cr><cr>}<esc>bbba
iabbrev while while()<cr>{<cr><cr>}<esc>bbba
iabbrev do do<cr>{<cr><cr>}while();<esc>ba
iabbrev else else<cr>{<cr><cr>}<esc>bi
iabbrev elseif else if()<cr>{<cr><cr>}<esc>bbba
iabbrev switch switch()<cr>{<cr><cr>}<esc>bbba
iabbrev case case:<esc>i
iabbrev struct struct <cr>{<cr><cr>};<esc>bbbb$a
iabbrev main() int main(int argc, char *argv[]){<cr>return 0;<cr>}<esc>ba
iabbrev return return;<esc>i
iabbrev extern extern;<esc>i
iabbrev intd int ();<esc>bi
iabbrev inti int ()<cr>{<cr><cr>return 0;<cr>}<esc>bbbbbbi

"standard c
iabbrev printf printf("",);<esc>ba

inoremap c; <esc>mqA;<esc>`qa
inoremap c' <esc>viw<esc>a'<esc>bi'<esc>lela
inoremap c" <esc>viw<esc>a"<esc>bi"<esc>lela
inoremap cI <esc>mqgg=G`qa
inoremap cS <esc>mq:%s,  , ,e<return>:noh<return>`qa
inoremap cL <esc>:%s/\s\+$//e<return>:%s/\n\{3,}/\r\r/e<return>:noh<return>a
"normals

"inoremap ,nu <esc>O
"inoremap ,mf <esc>I
"inoremap ,me <esc>A
"inoremap ,md <esc>jli
"inoremap ,mu <esc>kli
"inoremap ,mr <esc>lli
"inoremap ,ml <esc>hli
"inoremap ,mt <esc>ggli
"inoremap ,mb <esc>Gali
"inoremap csave <esc>:w<return>a
"inoremap cclose <esc>:w<return>:bd<return>
"inoremap czap <esc>ddO
"inoremap cterm <esc>mqA;<esc>`q<esc>a
"inoremap cabort <esc>:q!<return>
"inoremap cspace <esc>mq:%s,  , ,g<return>:noh<return>`qa
"
