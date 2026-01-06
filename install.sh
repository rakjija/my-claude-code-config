#!/bin/bash

# Claude Code 전역 설정 설치 스크립트

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Claude Code 전역 설정 설치 중..."

mkdir -p "$CLAUDE_DIR"

link_item() {
    local name=$1
    local src="$SCRIPT_DIR/$name"
    local dest="$CLAUDE_DIR/$name"
    
    # 기존 심볼릭 링크 삭제
    if [ -L "$dest" ]; then
        rm "$dest"
    # 기존 파일/디렉터리 백업
    elif [ -e "$dest" ]; then
        echo "기존 $name 백업: $dest.backup"
        mv "$dest" "$dest.backup"
    fi
    
    ln -sfn "$src" "$dest"
    echo "  $dest -> $src"
}

link_item "CLAUDE.md"
link_item "specs"
link_item "commands"

echo "완료!"