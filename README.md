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

프로젝트 루트에 `.claude/` 디렉터리 생성 후 설정:

```bash
mkdir -p .claude/rules

# 메인 설정 파일
cat ~/.claude/templates/nodejs.md >> .claude/CLAUDE.md
cat ~/.claude/templates/typescript.md >> .claude/CLAUDE.md

# 추가 규칙 (선택)
echo "# 프로젝트 전용 규칙" > .claude/rules/project.md
```

Claude Code가 자동으로 로드하는 파일:
- `.claude/CLAUDE.md` - 프로젝트 메인 설정
- `.claude/CLAUDE.local.md` - 로컬 전용 (gitignore)
- `.claude/rules/**/*.md` - 추가 규칙
