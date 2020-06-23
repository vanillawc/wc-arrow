terser wc-arrow.js -m --mangle-props reserved=[l,w,constructor,observedAttributes,disconnectedCallback,attributeChangedCallback,connectedCallback,Customarrow] -o wc-arrow.min.js

terser wc-arrow-node.js -m --mangle-props reserved=[l,w,constructor,observedAttributes,disconnectedCallback,attributeChangedCallback,connectedCallback,Customarrow] -o wc-arrow-node.min.js
