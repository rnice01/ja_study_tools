/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.elm", "../lib/ja_study_tools_web/templates/**/*.html.heex"],
  theme: {
    extend: {
      animation: {
        'zoom-once': 'zoom .8s ease-in-out',
      },
      keyframes: {
        zoom: {
          '0%, 100%': { transform: 'scale(1, 1)' },
          '50%': { transform: 'scale(1.3, 1.3)' },
        }
      }
    },
  },
  plugins: [],
}
