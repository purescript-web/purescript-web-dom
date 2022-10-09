var getEffProp = function (name) {
  return function (attr) {
    return function () {
      return attr[name];
    };
  };
};

export function namespaceURI = () => getEffProp("namespaceURI");

export function prefix = () => getEffProp("prefix");

export function localName = () => getEffProp("localName");

export function name = () => getEffProp("name");

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

export function _ownerElement = () => getEffProp("_ownerElement");
