var getEffProp = function (name) {
  return function (attr) {
    return function () {
      return attr[name];
    };
  };
};

export const namespaceURI = getEffProp("namespaceURI");

export const prefix = getEffProp("prefix");

export const localName = getEffProp("localName");

export const name = getEffProp("name");

export function getValue(attr) {
  return function () {
    return attr.value;
  };
};

export function setValue (attr) {
  return function (value) {
    return function () {
      attr.value = value;
    };
  };
};

export const _ownerElement = getEffProp("_ownerElement");
