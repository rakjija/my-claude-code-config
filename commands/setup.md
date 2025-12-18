프로젝트 CLAUDE.md 구조 설정/마이그레이션:

## 구조

```
project/
├── README.md          # 프로젝트 문서 + TODO + AI 규칙 (전부)
├── AGENTS.md          # @README.md
└── .claude/
    └── CLAUDE.md      # @../AGENTS.md
```

## 절차

1. README.md, package.json / go.mod / pyproject.toml 확인
2. `~/.claude/templates/`에서 적합한 템플릿 선택

3. README.md 처리:

   - 없으면 → 템플릿 기반으로 생성
   - 있으면 → 누락된 섹션(TODO, AI 규칙) 추가

4. AGENTS.md 생성/수정 (`@README.md`만)

5. .claude/CLAUDE.md 생성 (`@../AGENTS.md`만)

6. 기존 AGENTS.md나 CLAUDE.md에 커스텀 내용 있으면 → README.md로 병합

## README.md 형식

```
# 프로젝트명

설명...

## 설치
...

## 사용법
...

## TODO
- [ ]

## AI 작업 규칙
- (프로젝트별 주의사항)

## 금지사항
- dist/, node_modules/ 수정
- 기존 테스트 삭제

## 테스트
- `pnpm test`
```

## AGENTS.md 형식

```
@README.md
```

## .claude/CLAUDE.md 형식

```
@../AGENTS.md
```
