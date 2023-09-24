export function getAttributes(namedNodeMap) {
  return function () {
    var attributes = [];
    var attributes_length = namedNodeMap.length;

    for (var i = 0; i < attributes_length; i++) {
      attributes.push(namedNodeMap.item(i));
    }

    return attributes;
  };
}

export function getNamedItem(namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.getNamedItem(qualifiedName);
    };
  };
}

export function getNamedItemNS(namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.getNamedItemNS(qualifiedName);
    };
  };
}

export function setNamedItem(namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.setNamedItem(qualifiedName);
    };
  };
}

export function setNamedItemNS(namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.setNamedItemNS(qualifiedName);
    };
  };
}

export function removeNamedItem(namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.removeNamedItem(qualifiedName);
    };
  };
}

export function removeNamedItemNS(namedNodeMap) {
  return function (qualifiedName) {
    return function () {
      return namedNodeMap.removeNamedItemNS(qualifiedName);
    };
  };
}
