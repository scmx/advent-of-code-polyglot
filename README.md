# advent-of-code-polyglot

(My new) Advent of Code Multi-year Solutions (repo) using shell scripts,
automation and possibly not the same language every day.

## Usage

- Start 2023 Day 1 Part 1 `./start 2023 1`
- Start 2023 Day 1 Part 2 `./start 2023 1 2`

## Structure

```
2023/
  day_01/
    input (day input, untracked)
    README.md (Markdown generated from day information html, untracked)
    part_1/
      solve (Takes STDIN, responds with STDOUT)
      test (Tests with Ruby and minitest by default)
    part_2/
      solve (Takes STDIN, responds with STDOUT)
      test (Tests with Ruby and minitest by default)
```

## Dependencies

- Bash (for automation)
- Ruby (for solving and running tests)
- Curl (for downloading input and day info HTML)
- Tmux + Neovim (as IDE during development)
- HTML to Markdown CLI `npx to-markdown-cli` https://github.com/ff6347/to-markdown-cli
