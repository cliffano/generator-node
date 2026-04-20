"use strict";
/* eslint no-unused-vars: 0 */
import Display from '../lib/{{project_id}}.js';
import referee from '@sinonjs/referee';
const assert = referee.assert;

describe('{{project_id}} - integration', function() {

  it('should construct Display and format with lower transformation and no reverse', function () {
    const display = new Display('examples/{{project_id}}.yaml');
    const text = display.format(false, 'lower');
    assert.equals(text, 'hello world');
  });

  it('should construct Display and format with upper transformation and reverse', function () {
    const display = new Display('examples/{{project_id}}.yaml');
    const text = display.format(true, 'upper');
    assert.equals(text, 'DLROW OLLEH');
  });
});
