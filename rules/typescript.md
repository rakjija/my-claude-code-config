# TypeScript 규칙

## 타입 정의

- 객체 타입: `interface` 사용
- 유니온/튜플/프리미티브 별칭: `type` 사용
- `any` 사용 금지

---

## 컴파일러 설정

- `tsconfig.json`에 `"strict": true` 필수

---

## 검토 중 (적용 안 함)

**타입 관련:**
- `as` 타입 단언보다 타입 가드 사용
- `!` (non-null assertion) 사용 최소화
- `unknown` > `any` (불가피한 경우)

**코드 스타일:**
- 옵셔널 체이닝 (`?.`) 적극 사용
- nullish coalescing (`??`) > OR (`||`)
- enum 대신 `as const` 객체 선호

**import:**
- 타입만 import 시 `import type` 사용
