"use strict";

var getEffProp = function (name) {
  return function (attr) {
    return function () {
      return attr[name];
    };
  };
};

exports.namespaceURI = getEffProp("namespaceURI");

exports.prefix = getEffProp("prefix");

exports.localName = getEffProp("localName");

exports.name = getEffProp("name");

exports.getValue = function (attr) {
  return function () {
    return attr.value;
  };
};

exports.setValue = function (attr) {
  return function (value) {
    return function () {
      attr.value = value;
    };
  };
};

exports._ownerElement = getEffProp("_ownerElement");
