#!/bin/bash

# Claude Code 전역 설정 설치 스크립트

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Claude Code 전역 설정 설치 중..."

# ~/.claude 디렉토리 생성
mkdir -p "$CLAUDE_DIR"

# 기존 파일 백업
if [ -f "$CLAUDE_DIR/CLAUDE.md" ] && [ ! -L "$CLAUDE_DIR/CLAUDE.md" ]; then
    echo "기존 CLAUDE.md 백업: $CLAUDE_DIR/CLAUDE.md.backup"
    mv "$CLAUDE_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md.backup"
fi

if [ -d "$CLAUDE_DIR/rules" ] && [ ! -L "$CLAUDE_DIR/rules" ]; then
    echo "기존 rules 백업: $CLAUDE_DIR/rules.backup"
    mv "$CLAUDE_DIR/rules" "$CLAUDE_DIR/rules.backup"
fi

if [ -d "$CLAUDE_DIR/templates" ] && [ ! -L "$CLAUDE_DIR/templates" ]; then
    echo "기존 templates 백업: $CLAUDE_DIR/templates.backup"
    mv "$CLAUDE_DIR/templates" "$CLAUDE_DIR/templates.backup"
fi

# 심볼릭 링크 생성
ln -sf "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"
ln -sf "$SCRIPT_DIR/rules" "$CLAUDE_DIR/rules"
ln -sf "$SCRIPT_DIR/templates" "$CLAUDE_DIR/templates"

echo "완료!"
echo "  $CLAUDE_DIR/CLAUDE.md -> $SCRIPT_DIR/CLAUDE.md"
echo "  $CLAUDE_DIR/rules -> $SCRIPT_DIR/rules"
echo "  $CLAUDE_DIR/templates -> $SCRIPT_DIR/templates"
