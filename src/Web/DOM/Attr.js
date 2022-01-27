"use strict";

var getEffProp = function (name) {
  return function (node) {
    return function () {
      return node[name];
    };
  };
};

exports.namespaceURI = getEffProp("namespaceURI");

exports.prefix = getEffProp("prefix");

exports.localName = getEffProp("localName");

exports.name = getEffProp("name");

exports.getValue = getEffProp("getValue");

exports.setValue = function (value) {
  return function (attr) {
    return function () {
      attr.value = value;
    };
  };
};

exports._ownerElement = getEffProp("_ownerElement");
