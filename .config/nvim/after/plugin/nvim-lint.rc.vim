lua <<EOF
require('lint').linters_by_ft = {
  python = { 'flake8', 'mypy' }
}
EOF

au BufWritePost <buffer> lua require('lint').try_lint()