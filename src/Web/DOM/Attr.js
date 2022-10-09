var getEffProp = function (name) {
  return function (attr) {
    return function () {
      return attr[name];
    };
  };
};

exports function namespaceURI = () => getEffProp("namespaceURI");

exports function prefix = () => getEffProp("prefix");

exports function localName = () => getEffProp("localName");

exports function name = () => getEffProp("name");

exports function getValue(attr) {
  return function () {
    return attr.value;
  };
};

exports function setValue (attr) {
  return function (value) {
    return function () {
      attr.value = value;
    };
  };
};

exports function _ownerElement = () => getEffProp("_ownerElement");
