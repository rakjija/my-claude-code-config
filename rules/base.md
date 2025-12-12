# 프로젝트 설정 규칙

## 파일 위치

프로젝트 레벨 Claude Code 설정은 반드시 `.claude/` 디렉터리 안에 생성:
- `.claude/CLAUDE.md` - 메인 설정
- `.claude/CLAUDE.local.md` - 로컬 전용 (gitignore)
- `.claude/rules/**/*.md` - 추가 규칙

루트에 `CLAUDE.md` 직접 생성 금지.

---

## CLAUDE.md 작성 형식

프로젝트 CLAUDE.md 작성 요청 시 다음 형식 사용:

```md
## 프로젝트 개요

- 프로젝트명: (package.json, README 등에서 추론)
- 설명: (프로젝트 목적 1줄 요약)

---

## 기술 스택

- 런타임: (package.json, go.mod 등에서 추론)
- 프레임워크: (dependencies에서 추론)
- 데이터베이스: (있는 경우)

---

## 테스트

- 테스트 명령: (package.json scripts에서 추론)

---

## 프로젝트별 규칙

(전역 규칙 덮어쓰기할 내용)
```
