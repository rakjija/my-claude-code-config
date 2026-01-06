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
├── CLAUDE.md         # 전역 설정
├── specs/            # 규칙
│   ├── ai_response.md
│   ├── git.md
│   ├── security.md
│   ├── tdd.md
│   └── todo.md
├── workflows/        # 개발 프로세스
│   ├── main.md
│   ├── planning.md
│   ├── spec.md
│   └── internalize.md
├── templates/        # 문서 형식
│   ├── readme.md
│   └── agents.md
└── commands/         # 슬래시 커맨드
    ├── setup.md      # /setup - 프로젝트 초기화
    └── readme.md     # /readme - README 생성/수정
```

## 사용법

### 전역 규칙

`install.sh` 실행 후 자동 적용

### 프로젝트 초기화

```bash
# Claude Code에서 실행
/setup
```

생성되는 구조:

```
project/
├── README.md      # 프로젝트 문서 + AI 규칙
├── AGENTS.md      # @README.md + @TODO.md
├── TODO.md        # TODO 관리
├── CLAUDE.md      # @AGENTS.md
└── GEMINI.md      # @AGENTS.md
```
