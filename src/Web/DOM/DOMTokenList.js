export function add(list) {
  return function(token) {
    return function() {
      return list.add(token);
    };
  };
}

export function remove(list) {
  return function(token) {
    return function() {
      return list.remove(token);
    };
  };
}

export function contains(list) {
  return function(token) {
    return function() {
      return list.contains(token);
    };
  };
}

export function toggle(list) {
  return function(token) {
    return function() {
      return list.toggle(token);
    };
  };
}

export function toggleForce(list) {
  return function(token) {
    return function(force) {
      return function() {
        return list.toggle(token, force);
      };
    };
  };
}

export function _item(list) {
  return function(index) {
    return function() {
      return list.item(index);
    };
  };
}

exports function replace(list) {
  return function(token) {
    return function(newToken) {
      return function() {
        return list.replace(token, newToken);
      };
    };
  };
};

exports function supports(list) {
  return function(token) {
    return function() {
      return list.supports(token);
    };
  };
};

exports function tokens(domTokenList) {
  return function () {
    var tokens = [];
    var tokens_length = domTokenList.length;

    for (var i = 0; i < tokens_length; i++) {
      tokens.push(domTokenList.item(i));
    }

    return tokens;
  };
};

exports function setValue(list) {
  return function(token) {
    return function() {
      return list.setValue(token);
    };
  };
};

exports function getValue(list) {
  return function() {
    return list.getValue();
  };
};
