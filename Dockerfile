# -------------------------------------
# 🛠️ Base image
# -------------------------------------
FROM node:18-alpine

# 🗂️ Set working directory
WORKDIR /app

# 📦 Copy all project files (including src, public, styles, etc.)
COPY . .

# 📥 Install all dependencies (including devDependencies)
RUN npm install

# ⚙️ Build the Next.js app (output goes to .next)
RUN npm run build

# 🌐 Expose the default port Next.js uses
EXPOSE 3000

# 🚀 Start the app (change to dev if needed)
CMD ["npm", "start"]
