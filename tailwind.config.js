/** @type {import('tailwindcss').Config} */
module.exports = {
    mode: 'jit',
    content: [
        "./templates/**/*.html",
        "./static/src/**/*.js"
    ],
    theme: {
        extend: {
            colors: {
                'beige': {
                    100: '#ffe5cc',
                    200: '#cbb3a1',
                    300: '#836e61'
                },
            }
        },
        fontFamily: {
            'custom': ['Aboreto', 'sans-serif'],
            'allura': ['Allura', 'sans-serif']
        },
    },
    plugins: [
        require("flowbite/plugin")
    ],
}
