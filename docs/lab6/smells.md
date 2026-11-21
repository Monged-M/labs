# Task C1 — Legacy invoice code smells (before refactoring)

| Smell | Where in `legacy_invoice.py` | Principle / issue |
|---|---|---|
| Conditional chain for fee policies | `if/elif` in course loop and separate `if` afterward | **OCP**: adding fee types means modifying invoice calculations. |
| Magic numbers | `1200`, `0.5`, `2000`, `5000` | Readability/maintainability: unclear pricing configuration. |
| Mixed responsibilities | `make_invoice` computes fees, formats text, writes a file, and prints | **SRP**: multiple independent reasons to change. |
| Direct file-system dependency | `open(...)` inside `make_invoice` | **DIP**: hard-coded I/O instead of an injected writer. |
| Manual file lifecycle | `open`, `write`, `close` without `with` | Resource safety: exceptions may leave files open. |
| Repeated per-course calculation | Loop over `student.courses` | Duplication/unnecessary work: the policy only requires total hours. |

Original `legacy_invoice.py` is included for comparison. The refactor preserves the original regular (7,200), scholarship (3,600), and international (17,000) totals at six hours. Printing is moved to the caller, as directed by the handout.
