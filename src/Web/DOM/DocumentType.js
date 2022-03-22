"use strict";

var getProp = function (name) {
  return function (doctype) {
    return doctype[name];
  };
};

export var name = getProp("name");
export var publicId = getProp("publicId");
export var systemId = getProp("systemId");
