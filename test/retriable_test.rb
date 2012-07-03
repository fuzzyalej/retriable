require 'test_helper'
require 'retriable'

class TestRetriable < Test::Unit::TestCase

  def test_code_execution
    ret = retriable do
      'hey'
    end

    assert_equal ret, 'hey'
  end

  def test_raise_exception
    assert_raise StandardError do
      retriable do
        raise StandardError
      end
    end
  end

  def test_retries
    tmp = 0
    retriable(3) do
      tmp += 1
      raise StandardError
    end

  rescue
    assert_equal tmp, 3
  end
end
