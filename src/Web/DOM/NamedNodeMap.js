export const length = (namedNodeMap) => () => namedNodeMap.length;

export function getAttributes(namedNodeMap) {
  return function () {
    const result = [];
    for (const attr of namedNodeMap) {
      result.push(attr);
    }
    return result;
  };
}

export function getNamedItem(name) {
  return function (namedNodeMap) {
    return function () {
      return namedNodeMap.getNamedItem(name);
    };
  };
}

export function getNamedItemNS(name) {
  return function (namedNodeMap) {
    return function () {
      return namedNodeMap.getNamedItemNS(name);
    };
  };
}

export function setNamedItem(name) {
  return function (namedNodeMap) {
    return function () {
      return namedNodeMap.setNamedItem(name);
    };
  };
}

export function setNamedItemNS(name) {
  return function (namedNodeMap) {
    return function () {
      return namedNodeMap.setNamedItemNS(name);
    };
  };
}

export function removeNamedItem(name) {
  return function (namedNodeMap) {
    return function () {
      return namedNodeMap.removeNamedItem(name);
    };
  };
}

export function removeNamedItemNS(namedNodeMap) {
  return function (name) {
    return function () {
      return namedNodeMap.removeNamedItemNS(name);
    };
  };
}
