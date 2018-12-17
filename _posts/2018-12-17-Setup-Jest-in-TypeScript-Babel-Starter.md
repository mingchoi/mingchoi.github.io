---
layout: post
title: Setup Jest in TypeScript-Babel-Starter
---
# Setup Jest in TypeScript-Babel-Starter

### Clone TypeScript-Babel-Starter
```
git clone https://github.com/Microsoft/TypeScript-Babel-Starter.git PROJECT_NAME
```

### Install and setup ts-jest
```
yarn add --dev jest typescript
yarn add --dev ts-jest @types/jest
yarn ts-jest config:init
```

### Write some test case
Edit `index.spec.ts`
```
describe("add", () => {
  it("should add two numbers", () => {
    let result = 1 + 2
    expect(result).toBe(3);
  });
});
```

### Test in console
```
yarn jest
```

# Optional setting

### Testing with breakpoint
```
node --inspect-brk node_modules/.bin/jest --runInBand
```

### Setup debugger in VSCode
Create .vscode/launch.json
```
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "launch",
      "name": "Jest",
      "args": ["--inspect-brk", "node_modules/.bin/jest", "--runInBand"]
    },
    {
      "type": "node",
      "request": "launch",
      "name": "Jest single folder",
      "args": [
        "--inspect-brk",
        "node_modules/.bin/jest",
        "--runInBand",
        "src/path-to-your-folder"
      ]
    }
  ]
}
```
