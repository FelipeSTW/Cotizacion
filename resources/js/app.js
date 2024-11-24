import { createApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/inertia-vue3';
import { resolvePageComponent } from 'laravel-vite-plugin/inertia-helpers';
import { ZiggyVue } from 'ziggy-js';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
import { library } from '@fortawesome/fontawesome-svg-core';
import { faCalculator, faUserPlus, faBoxOpen, faShoppingCart, faDollarSign, faCartPlus, faTrash, faTimes, faSave, faList, faMoneyBillWave } from '@fortawesome/free-solid-svg-icons';

// Agregar los íconos a la biblioteca
library.add(faCalculator, faUserPlus, faBoxOpen, faShoppingCart, faDollarSign, faCartPlus, faTrash, faTimes, faSave, faList, faMoneyBillWave);

createInertiaApp({
    resolve: (name) =>
        resolvePageComponent(`./Pages/${name}.vue`, import.meta.glob('./Pages/**/*.vue')),
    setup({ el, App, props, plugin }) {
        const ziggy = props?.page?.props?.ziggy ?? {}; // Asegúrate de que ziggy tenga un valor predeterminado

        createApp({ render: () => h(App, props) })
            .use(plugin)
            .use(ZiggyVue, ziggy) // Pasa el ziggy validado
            .component('font-awesome-icon', FontAwesomeIcon) // Registrar el componente FontAwesomeIcon globalmente
            .mount(el);
    },
});
