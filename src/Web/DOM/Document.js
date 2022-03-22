"use strict";

var getEffProp = function (name) {
  return function (doc) {
    return function () {
      return doc[name];
    };
  };
};

export var url = getEffProp("URL");
export var documentURI = getEffProp("documentURI");
export var origin = getEffProp("origin");
export var compatMode = getEffProp("compatMode");
export var characterSet = getEffProp("characterSet");
export var contentType = getEffProp("contentType");
export var _doctype = getEffProp("doctype");
export var _documentElement = getEffProp("documentElement");

export function getElementsByTagName(localName) {
  return function (doc) {
    return function () {
      return doc.getElementsByTagName(localName);
    };
  };
}

export function _getElementsByTagNameNS(ns) {
  return function (localName) {
    return function (doc) {
      return function () {
        return doc.getElementsByTagNameNS(ns, localName);
      };
    };
  };
}

export function getElementsByClassName(classNames) {
  return function (doc) {
    return function () {
      return doc.getElementsByClassName(classNames);
    };
  };
}

export function createElement(localName) {
  return function (doc) {
    return function () {
      return doc.createElement(localName);
    };
  };
}

export function _createElementNS(ns) {
  return function (qualifiedName) {
    return function (doc) {
      return function () {
        return doc.createElementNS(ns, qualifiedName);
      };
    };
  };
}

export function createDocumentFragment(doc) {
  return function () {
    return doc.createDocumentFragment();
  };
}

export function createTextNode(data) {
  return function (doc) {
    return function () {
      return doc.createTextNode(data);
    };
  };
}

export function createComment(data) {
  return function (doc) {
    return function () {
      return doc.createComment(data);
    };
  };
}

export function createProcessingInstruction(target) {
  return function (data) {
    return function (doc) {
      return function () {
        return doc.createProcessingInstruction(target, data);
      };
    };
  };
}

export function importNode(node) {
  return function (deep) {
    return function (doc) {
      return function () {
        return doc.importNode(node, deep);
      };
    };
  };
}

export function adoptNode(node) {
  return function (doc) {
    return function () {
      return doc.adoptNode(node);
    };
  };
}
