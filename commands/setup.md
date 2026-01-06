프로젝트 CLAUDE.md 구조 설정/마이그레이션:

@specs/todo.md

## 구조

```
project/
├── README.md          # 프로젝트 문서 + AI 규칙
├── AGENTS.md          # @README.md + @TODO.md
├── TODO.md            # TODO 관리
├── CLAUDE.md          # @AGENTS.md
└── GEMINI.md          # @AGENTS.md
```

## 절차

1. README.md, package.json / go.mod / pyproject.toml 확인
2. `templates/`에서 형식 확인

3. README.md 처리: @commands/readme.md

4. AGENTS.md 생성/수정 (@README.md + @TODO.md)

5. TODO.md 생성

6. CLAUDE.md 생성 (`@AGENTS.md`만)

7. GEMINI.md 생성 (`@AGENTS.md`만)

8. 기존 AGENTS.md, CLAUDE.md, GEMINI.md에 커스텀 내용 있으면 → AGENTS.md로 병합

## README.md 형식

(templates/readme.md 형식 참조)

## AGENTS.md 형식

(templates/agents.md 형식 참조)

## CLAUDE.md 형식

```
@AGENTS.md
```
