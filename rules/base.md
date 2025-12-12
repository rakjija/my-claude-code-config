# 프로젝트 설정 규칙

## 파일 위치

프로젝트 레벨 Claude Code 설정은 반드시 `.claude/` 디렉터리 안에 생성:
- `.claude/CLAUDE.md` - 메인 설정
- `.claude/CLAUDE.local.md` - 로컬 전용 (gitignore)
- `.claude/rules/**/*.md` - 추가 규칙

루트에 `CLAUDE.md` 직접 생성 금지.

---

## 프로젝트 정보 수집

CLAUDE.md 작성 또는 프로젝트 파악 시 다음 파일 우선 참조:
- README.md
- package.json / go.mod / pyproject.toml

---

## CLAUDE.md 작성 절차

프로젝트 CLAUDE.md 작성 요청 시:

1. 프로젝트 정보 수집 (위 파일 참조)
2. 적합한 템플릿 선택 (`~/.claude/templates/` 참조)
3. 템플릿 내용 + 프로젝트 정보로 `.claude/CLAUDE.md` 생성

---

## CLAUDE.md 작성 형식

```md
## 프로젝트 개요

- 프로젝트명: (package.json, README 등에서 추론)
- 설명: (프로젝트 목적 1줄 요약)

---

(해당 템플릿 내용 삽입)

---

## 테스트

- 테스트 명령: (package.json scripts에서 추론)

---

## 프로젝트별 규칙

(전역 규칙 덮어쓰기할 내용)
```
