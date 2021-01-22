"use strict";

var getProp = function (name) {
  return function (doctype) {
    return doctype[name];
  };
};

exports._namespaceURI = getProp("namespaceURI");
exports._prefix = getProp("prefix");
exports.localName = getProp("localName");
exports.tagName = getProp("tagName");

exports.id = function (node) {
  return function () {
    return node.id;
  };
};

exports.setId = function (id) {
  return function (node) {
    return function () {
      node.id = id;
    };
  };
};

exports.className = function (node) {
  return function () {
    return node.className;
  };
};

exports.classList = function (element) {
  return function () {
    return element.classList;
  };
};

exports.setClassName = function (className) {
  return function (node) {
    return function () {
      node.className = className;
    };
  };
};

exports.getElementsByTagName = function (localName) {
  return function (doc) {
    return function () {
      return doc.getElementsByTagName(localName);
    };
  };
};

exports._getElementsByTagNameNS = function (ns) {
  return function (localName) {
    return function (doc) {
      return function () {
        return doc.getElementsByTagNameNS(ns, localName);
      };
    };
  };
};

exports.getElementsByClassName = function (classNames) {
  return function (doc) {
    return function () {
      return doc.getElementsByClassName(classNames);
    };
  };
};

exports.setAttribute = function (name) {
  return function (value) {
    return function (element) {
      return function () {
        element.setAttribute(name, value);
      };
    };
  };
};

exports._getAttribute = function (name) {
  return function (element) {
    return function () {
      return element.getAttribute(name);
    };
  };
};

exports.hasAttribute = function(name) {
  return function (element) {
    return function () {
      return element.hasAttribute(name);
    };
  };
};

exports.removeAttribute = function (name) {
  return function (element) {
    return function () {
      element.removeAttribute(name);
    };
  };
};

exports.matches = function (selector) {
  return function(element) {
    return function () {
      return element.matches(selector);
    };
  };
};

exports._closest = function (selector) {
  return function(element) {
    return function () {
      return element.closest(selector);
    };
  };
};

// - CSSOM ---------------------------------------------------------------------

exports.scrollTop = function (node) {
  return function () {
    return node.scrollTop;
  };
};

exports.setScrollTop = function (scrollTop) {
  return function (node) {
    return function () {
      node.scrollTop = scrollTop;
    };
  };
};

exports.scrollLeft = function (node) {
  return function () {
    return node.scrollLeft;
  };
};

exports.setScrollLeft = function (scrollLeft) {
  return function (node) {
    return function () {
      node.scrollLeft = scrollLeft;
    };
  };
};

exports.scrollWidth = function (el) {
  return function () {
    return el.scrollWidth;
  };
};

exports.scrollHeight = function (el) {
  return function () {
    return el.scrollHeight;
  };
};

exports.clientTop = function (el) {
  return function () {
    return el.clientTop;
  };
};

exports.clientLeft = function (el) {
  return function () {
    return el.clientLeft;
  };
};

exports.clientWidth = function (el) {
  return function () {
    return el.clientWidth;
  };
};

exports.clientHeight = function (el) {
  return function () {
    return el.clientHeight;
  };
};

exports._attachShadow = function(props) {
  return function (el) {
    return function() {
      return el.attachShadow(props);
    };
  };
};
