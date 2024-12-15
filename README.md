# JWT Decoder

A simple CLI tool that decodes JWT tokens and outputs pretty-printed JSON.

## Requirements

- Ruby
- JWT gem (`gem install jwt`)

## Usage

1. Run the script:
```bash
ruby decode.rb
```

2. Paste your JWT when prompted:
```
Enter your encoded JWT:
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
```

3. View the decoded JSON:
```json
{
  "sub": "1234567890",
  "name": "John Doe",
  "iat": 1516239022
}
```

## Note

This tool is for development/debugging only. It does not verify JWT signatures.

