const isDev = process.env.NODE_ENV === "development"
export const base = isDev ? "http://localhost:4444" :   `${window.location.href}api`
