#!/usr/bin/env node

import process from 'process';
import path from 'path';
import { promises as fs } from 'fs';

const htmlPre = `<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
</head>
<body>
  <h1>Talks</h1>
  <ul>
`;
const htmlPost = `  </ul>
</body>
</html>`;
const titleRegex = /<title>(.*?)<\/title>/m;

async function generateHtmlIndex(dir) {
  let content = '';
  const entries = await fs.readdir(dir);
  for (const entry of entries) {
    const entryPath = path.join(dir, entry);
    const stats = await fs.lstat(entryPath);
    if (stats.isDirectory()) {
      const htmlContent = await fs.readFile(path.join(entryPath, 'index.html'), 'utf8');
      const title = htmlContent.match(titleRegex)[1];
      content += `    <li><a href="${entry}/index.html">${title}</a></li>\n`;
    }
  }
  const html = htmlPre + content + htmlPost;
  await fs.writeFile(path.join(dir, 'index.html'), html);
}

const targetDir = process.argv[2];
if (!targetDir) {
  console.error('Usage: generate-index.js <target-dir>');
  process.exit(1);
}

try {
  generateHtmlIndex(process.argv[2]);
  console.log('Successfully generated index.html for talks.');
} catch (err) {
  console.error(err);
  process.exit(1);
}
