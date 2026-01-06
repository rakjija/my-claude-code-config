프로젝트 구조 설정/마이그레이션:

## 구조

```
project/
├── README.md          # 프로젝트 문서 + AI 규칙
├── AGENTS.md          # @README.md + @TODO.md
├── TODO.md            # TODO 관리
├── CLAUDE.md          # @AGENTS.md
└── GEMINI.md          # @AGENTS.md
```

## 형식

### README.md

@specs/readme.md

### TODO.md

@specs/todo.md

### AGENTS.md / CLAUDE.md / GEMINI.md

@specs/ai_agents.md

## 절차

1. README.md, 프로젝트 설정 파일 확인
2. README.md 처리: @commands/readme.md
3. TODO.md 생성
4. AGENTS.md 생성
5. CLAUDE.md 생성
6. GEMINI.md 생성
