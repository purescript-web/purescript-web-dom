export const _namespaceURI = (attr) => attr.namespaceURI;

export const _prefix = (attr) => attr.prefix;

export const localName = (attr) => attr.localName;

export const getValue = (attr) => () => attr.value;

export const setValue = (attr) => (value) => () => {
  attr.value = value;
};

export const _ownerElement = (attr) => () => attr.ownerElement;
