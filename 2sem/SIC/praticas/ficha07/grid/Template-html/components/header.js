const headerTemplate = document.createElement('template');
headerTemplate.innerHTML = `

    <div class="header">
        <h1>App name</h1>
    </div>
`

class Header extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        const shadowRoot = this.attachShadow({ mode: 'closed' });
        shadowRoot.appendChild(headerTemplate.content);
    }
}

customElements.define('header-component', Header);