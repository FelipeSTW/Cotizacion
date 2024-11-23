import { createApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/inertia-vue3';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { ZiggyVue } from 'ziggy-js';

createInertiaApp({
    resolve: (name) =>
        resolvePageComponent(`./Pages/${name}.vue`, import.meta.glob('./Pages/**/*.vue')),
    setup({ el, App, props, plugin }) {
        const ziggy = props?.page?.props?.ziggy ?? {}; // Asegúrate de que ziggy tenga un valor predeterminado

        createApp({ render: () => h(App, props) })
            .use(plugin)
            .use(ZiggyVue, ziggy) // Pasa el ziggy validado
            .mount(el);
    },
});
