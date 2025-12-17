프로젝트 CLAUDE.md 구조 설정/마이그레이션:

## 파일 위치

- `.claude/CLAUDE.md` - 메인 설정
- 루트에 `AGENTS.md` - 다른 AI 도구 호환용

## 절차

1. README.md, package.json / go.mod / pyproject.toml 확인
2. `~/.claude/templates/`에서 적합한 템플릿 선택

3. AGENTS.md 처리:

   - 없으면 → 템플릿 기반으로 생성
   - 있으면 → 템플릿과 비교해서 누락된 섹션 추가

4. .claude/CLAUDE.md 생성 (`@../AGENTS.md`)

5. 기존 루트 CLAUDE.md 있으면 → 커스텀 내용 AGENTS.md로 병합 후 삭제

## AGENTS.md 형식

```
@README.md

## 작업 규칙
- (프로젝트별 주의사항)

## 금지사항
- dist/, node_modules/ 수정
- 기존 테스트 삭제

## 테스트
- `pnpm test`
```

## .claude/CLAUDE.md 형식

```
@../AGENTS.md
```
