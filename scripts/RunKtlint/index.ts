import { execSync } from "child_process";

export async function run() {
  try {
    const output = execSync('./ktlint -F "**/*.kt" "**/*.kts"', {
      encoding: "utf-8"
    });
    return `✅ Ktlint завершён успешно:\n\n${output}`;
  } catch (error: any) {
    return `❌ Ошибка Ktlint:\n\n${error.message}`;
  }
} 