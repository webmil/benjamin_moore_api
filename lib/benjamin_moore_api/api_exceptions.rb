module ApiExceptions
  class APIExceptionError < RuntimeError; end
  ApiExceptionError = Class.new(APIExceptionError)
  BadRequestError = Class.new(APIExceptionError)
  UnauthorizedError = Class.new(APIExceptionError)
  ForbiddenError = Class.new(APIExceptionError)
  ApiRequestsQuotaReachedError = Class.new(APIExceptionError)
  NotFoundError = Class.new(APIExceptionError)
  UnprocessableEntityError = Class.new(APIExceptionError)
  TimeOutError = Class.new(APIExceptionError)
  NoResponseError = Class.new(APIExceptionError)
  ApiError = Class.new(APIExceptionError)
end
