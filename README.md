# my-claude-code-config

Claude Code 전역 설정 파일 모음

## 설치

```bash
git clone https://github.com/rakjija/my-claude-code-config.git
cd my-claude-code-config
./install.sh
```

## 구조

```
├── CLAUDE.md         # 전역 공통 규칙
├── rules/            # 필수 규칙 (자동 로드)
│   ├── base.md       # 프로젝트 CLAUDE.md 작성 규칙
│   ├── git.md        # Git 규칙
│   ├── security.md   # 보안 규칙
│   └── tdd.md        # TDD 규칙 (필수)
└── templates/        # 선택 템플릿 (프로젝트에 복붙)
    ├── nodejs.md
    ├── typescript.md
    └── python.md
```

## 사용법

### 전역 규칙

`install.sh` 실행 후 자동 적용됨

### 프로젝트별 설정

1. `~/.claude/templates/`에서 필요한 템플릿 복사
2. 프로젝트 루트에 `CLAUDE.md` 생성
3. 선택지에서 필요한 것 선택 (볼드 = 기본값)

```bash
# 예시
cat ~/.claude/templates/nodejs.md >> ./CLAUDE.md
cat ~/.claude/templates/typescript.md >> ./CLAUDE.md
```
