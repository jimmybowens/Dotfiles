iabbrev #i #include
iabbrev #d #define
iabbrev ' ''<esc>i
iabbrev " ""<esc>i
iabbrev if if(){<cr><cr>}<esc>bba
iabbrev { {<cr><cr>}<esc>bi

iabbrev ( ()<esc>i
iabbrev [ []<esc>i
iabbrev for for(){<cr><cr>}<esc>bba
iabbrev while while(){<cr><cr>}<esc>bba
iabbrev do do{<cr><cr>}while();<esc>ba
iabbrev else else{<cr><cr>}<esc>bi
iabbrev elseif else if(){<cr><cr>}<esc>bba
iabbrev struct struct {<cr><cr>};<esc>bbbi

iabbrev main() int main(int argc, char *argv[]){<cr>return 0;<cr>}<esc>ba
iabbrev return return;<esc>i
inoremap ,nd <esc>o
inoremap ,nu <esc>O

inoremap ,mf <esc>I
inoremap ,me <esc>A
inoremap ,md <esc>j<esc>l<esc>i
inoremap ,mu <esc>k<esc>l<esc>i
inoremap ,mr <esc>l<esc>l<esc>i
inoremap ,ml <esc>h<esc>l<esc>i
inoremap ,mt <esc>gg<esc>l<esc>i
inoremap ,mb <esc>G<esc>l<esc>i

inoremap isave <esc>:w<return>a
inoremap csave <esc>:w<return>:bd<return>
