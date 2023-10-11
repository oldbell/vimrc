#!/bin/bash

yum -y install vim-enhanced.x86_64 wget.x86_64
h=`eval echo ~$USER`
vimrc="${h}/.vimrc"

if [ -e "${vimrc}" ];
then
        rm -f "${vimrc}"
fi

echo "\" see : https://medium.com/sunhyoups-story/vim-%EC%97%90%EB%94%94%ED%84%B0-%EC%9D%B4%EC%81%98%EA%B2%8C-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0-5b6b8d546017 "  >> ${vimrc}
echo "set hlsearch \" 검색어 하이라이팅" >> ${vimrc}
echo "set nu \" 줄번호"  >> ${vimrc}
echo "set autoindent \" 자동 들여쓰기" >> ${vimrc}
echo "set scrolloff=2" >> ${vimrc}
echo "set wildmode=longest,list" >> ${vimrc}
echo "set ts=4 \"tag select" >> ${vimrc}
echo "set sts=4 \"st select" >> ${vimrc}
echo "set sw=1 \" 스크롤바 너비" >> ${vimrc}
echo "set autowrite \" 다른 파일로 넘어갈 때 자동 저장" >> ${vimrc}
echo "set autoread \" 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴" >> ${vimrc}
echo "set cindent \" C언어 자동 들여쓰기" >> ${vimrc}
echo "set bs=eol,start,indent" >> ${vimrc}
echo "set history=256" >> ${vimrc}
echo "set laststatus=2 \" 상태바 표시 항상" >> ${vimrc}
echo "set paste \" 붙여넣기 계단현상 없애기" >> ${vimrc}
echo "set shiftwidth=4 \" 자동 들여쓰기 너비 설정" >> ${vimrc}
echo "set showmatch \" 일치하는 괄호 하이라이팅" >> ${vimrc}
echo "set smartcase \" 검색시 대소문자 구별" >> ${vimrc}
echo "set smarttab" >> ${vimrc}
echo "set smartindent" >> ${vimrc}
echo "set softtabstop=4" >> ${vimrc}
echo "set tabstop=4" >> ${vimrc}
echo "set expandtab \" 탭을 공백으로"  >> ${vimrc}
echo "set ruler \" 현재 커서 위치 표시" >> ${vimrc}
echo "set incsearch" >> ${vimrc}
echo "set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\ " >> ${vimrc}

#echo ":e\" 마지막으로 수정된 곳에 커서를 위치함" >> ${vimrc}
#echo "au BufReadPost * " >> ${vimrc}
#echo "\ if line(\"'\\"") > 0 && line(\"'\\"") <= line(\"$\") | " >> ${vimrc}
#echo "\ exe \"norm g\`\"\" | " >> ${vimrc}
#echo "\ endif " >> ${vimrc}
#echo "\" 파일 인코딩을 한국어로" >> ${vimrc}
#echo "if \$LANG[0]=='k' && \$LANG[1]=='o'" >> ${vimrc}
#echo " set fileencoding=korea" >> ${vimrc}
#echo "endif" >> ${vimrc}

echo "\" 구문 강조 사용" >> ${vimrc}
echo "if has(\"syntax\")" >> ${vimrc}
echo " syntax on" >> ${vimrc}
echo "endif " >> ${vimrc}

# echo "\" 컬러 스킴 사용 " >> ${vimrc}
#vim_runtime=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `
#vim_color="${vim_runtime}/colors"
#if [ -e ${vim_color} ];
#then
#       wget -O "${vim_color}/jellybeans.vim" "http://www.vim.org/scripts/download_script.php?src_id=24649"
#       echo "colorscheme jellybeans" >> ${vimrc}
#else
#       echo "\"colorscheme jellybeans" >> ${vimrc}
#fi