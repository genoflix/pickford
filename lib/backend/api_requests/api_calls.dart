import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TVDB API Group Code

class TvdbApiGroup {
  static String getBaseUrl() => 'https://api4.thetvdb.com/v4';
  static Map<String, String> headers = {};
  static CreateAnAuthTokenTheTokenHasOneMonthValidationLengthCall
      createAnAuthTokenTheTokenHasOneMonthValidationLengthCall =
      CreateAnAuthTokenTheTokenHasOneMonthValidationLengthCall();
  static GetArtworkBaseCall getArtworkBaseCall = GetArtworkBaseCall();
  static GetArtworkExtendedCall getArtworkExtendedCall =
      GetArtworkExtendedCall();
  static GetAllArtworkStatusesCall getAllArtworkStatusesCall =
      GetAllArtworkStatusesCall();
  static GetAllArtworkTypesCall getAllArtworkTypesCall =
      GetAllArtworkTypesCall();
  static GetAllAwardsCall getAllAwardsCall = GetAllAwardsCall();
  static GetAwardCall getAwardCall = GetAwardCall();
  static GetAwardExtendedCall getAwardExtendedCall = GetAwardExtendedCall();
  static GetAwardCategoryCall getAwardCategoryCall = GetAwardCategoryCall();
  static GetAwardCategoryExtendedCall getAwardCategoryExtendedCall =
      GetAwardCategoryExtendedCall();
  static GetCharacterBaseCall getCharacterBaseCall = GetCharacterBaseCall();
  static GetAllCompaniesCall getAllCompaniesCall = GetAllCompaniesCall();
  static GetCompanyTypesCall getCompanyTypesCall = GetCompanyTypesCall();
  static GetCompanyCall getCompanyCall = GetCompanyCall();
  static GetAllContentRatingsCall getAllContentRatingsCall =
      GetAllContentRatingsCall();
  static GetAllCountriesCall getAllCountriesCall = GetAllCountriesCall();
  static GetEntityTypesCall getEntityTypesCall = GetEntityTypesCall();
  static GetAllEpisodesCall getAllEpisodesCall = GetAllEpisodesCall();
  static GetEpisodeBaseCall getEpisodeBaseCall = GetEpisodeBaseCall();
  static GetEpisodeExtendedCall getEpisodeExtendedCall =
      GetEpisodeExtendedCall();
  static GetEpisodeTranslationCall getEpisodeTranslationCall =
      GetEpisodeTranslationCall();
  static GetAllGendersCall getAllGendersCall = GetAllGendersCall();
  static GetAllGenresCall getAllGenresCall = GetAllGenresCall();
  static GetGenreBaseCall getGenreBaseCall = GetGenreBaseCall();
  static GetAllInspirationTypesCall getAllInspirationTypesCall =
      GetAllInspirationTypesCall();
  static GetAllLanguagesCall getAllLanguagesCall = GetAllLanguagesCall();
  static GetAllListsCall getAllListsCall = GetAllListsCall();
  static GetListCall getListCall = GetListCall();
  static GetListBySlugCall getListBySlugCall = GetListBySlugCall();
  static GetListExtendedCall getListExtendedCall = GetListExtendedCall();
  static GetListTranslationCall getListTranslationCall =
      GetListTranslationCall();
  static GetAllMovieCall getAllMovieCall = GetAllMovieCall();
  static GetMovieBaseCall getMovieBaseCall = GetMovieBaseCall();
  static GetMovieExtendedCall getMovieExtendedCall = GetMovieExtendedCall();
  static GetMoviesFilterCall getMoviesFilterCall = GetMoviesFilterCall();
  static GetMovieBaseBySlugCall getMovieBaseBySlugCall =
      GetMovieBaseBySlugCall();
  static GetMovieTranslationCall getMovieTranslationCall =
      GetMovieTranslationCall();
  static GetAllMovieStatusesCall getAllMovieStatusesCall =
      GetAllMovieStatusesCall();
  static GetAllPeopleCall getAllPeopleCall = GetAllPeopleCall();
  static GetPeopleBaseCall getPeopleBaseCall = GetPeopleBaseCall();
  static GetPeopleExtendedCall getPeopleExtendedCall = GetPeopleExtendedCall();
  static GetPeopleTranslationCall getPeopleTranslationCall =
      GetPeopleTranslationCall();
  static GetAllPeopleTypesCall getAllPeopleTypesCall = GetAllPeopleTypesCall();
  static GetSearchResultsCall getSearchResultsCall = GetSearchResultsCall();
  static GetSearchResultsByRemoteIdCall getSearchResultsByRemoteIdCall =
      GetSearchResultsByRemoteIdCall();
  static GetAllSeasonsCall getAllSeasonsCall = GetAllSeasonsCall();
  static GetSeasonBaseCall getSeasonBaseCall = GetSeasonBaseCall();
  static GetSeasonExtendedCall getSeasonExtendedCall = GetSeasonExtendedCall();
  static GetSeasonTypesCall getSeasonTypesCall = GetSeasonTypesCall();
  static GetSeasonTranslationCall getSeasonTranslationCall =
      GetSeasonTranslationCall();
  static GetAllSeriesCall getAllSeriesCall = GetAllSeriesCall();
  static GetSeriesBaseCall getSeriesBaseCall = GetSeriesBaseCall();
  static GetSeriesArtworksCall getSeriesArtworksCall = GetSeriesArtworksCall();
  static GetSeriesNextAiredCall getSeriesNextAiredCall =
      GetSeriesNextAiredCall();
  static GetSeriesExtendedCall getSeriesExtendedCall = GetSeriesExtendedCall();
  static GetSeriesEpisodesCall getSeriesEpisodesCall = GetSeriesEpisodesCall();
  static GetSeriesSeasonEpisodesTranslatedCall
      getSeriesSeasonEpisodesTranslatedCall =
      GetSeriesSeasonEpisodesTranslatedCall();
  static GetSeriesFilterCall getSeriesFilterCall = GetSeriesFilterCall();
  static GetSeriesBaseBySlugCall getSeriesBaseBySlugCall =
      GetSeriesBaseBySlugCall();
  static GetSeriesTranslationCall getSeriesTranslationCall =
      GetSeriesTranslationCall();
  static GetAllSeriesStatusesCall getAllSeriesStatusesCall =
      GetAllSeriesStatusesCall();
  static GetAllSourceTypesCall getAllSourceTypesCall = GetAllSourceTypesCall();
  static UpdatesCall updatesCall = UpdatesCall();
  static GetUserInfoCall getUserInfoCall = GetUserInfoCall();
  static GetUserInfoByIdCall getUserInfoByIdCall = GetUserInfoByIdCall();
  static GetUserFavoritesCall getUserFavoritesCall = GetUserFavoritesCall();
  static CreateUserFavoritesCall createUserFavoritesCall =
      CreateUserFavoritesCall();
}

class CreateAnAuthTokenTheTokenHasOneMonthValidationLengthCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "apikey": "ab631e2c-94b1-4f8e-a61e-8cf402b2669b",
  "pin": "1q2w3e4r"
}''';
    return ApiManager.instance.makeApiCall(
      callName:
          'create an auth token. The token has one month validation length.',
      apiUrl: '${baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetArtworkBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getArtworkBase',
      apiUrl: '${baseUrl}/artwork/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetArtworkExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getArtworkExtended',
      apiUrl: '${baseUrl}/artwork/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllArtworkStatusesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllArtworkStatuses',
      apiUrl: '${baseUrl}/artwork/statuses',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllArtworkTypesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllArtworkTypes',
      apiUrl: '${baseUrl}/artwork/types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllAwardsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllAwards',
      apiUrl: '${baseUrl}/awards',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAwardCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAward',
      apiUrl: '${baseUrl}/awards/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAwardExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAwardExtended',
      apiUrl: '${baseUrl}/awards/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAwardCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAwardCategory',
      apiUrl: '${baseUrl}/awards/categories/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAwardCategoryExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAwardCategoryExtended',
      apiUrl: '${baseUrl}/awards/categories/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCharacterBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCharacterBase',
      apiUrl: '${baseUrl}/characters/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCompaniesCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllCompanies',
      apiUrl: '${baseUrl}/companies',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCompanyTypesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCompanyTypes',
      apiUrl: '${baseUrl}/companies/types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCompanyCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getCompany',
      apiUrl: '${baseUrl}/companies/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllContentRatingsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllContentRatings',
      apiUrl: '${baseUrl}/content/ratings',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllCountriesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllCountries',
      apiUrl: '${baseUrl}/countries',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEntityTypesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getEntityTypes',
      apiUrl: '${baseUrl}/entities',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllEpisodesCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllEpisodes',
      apiUrl: '${baseUrl}/episodes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEpisodeBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getEpisodeBase',
      apiUrl: '${baseUrl}/episodes/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEpisodeExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? meta = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getEpisodeExtended',
      apiUrl: '${baseUrl}/episodes/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'meta': meta,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetEpisodeTranslationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? language = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getEpisodeTranslation',
      apiUrl: '${baseUrl}/episodes/${id}/translations/${language}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllGendersCall {
  Future<ApiCallResponse> call({
    String? bearerAuth =
        'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZ2UiOiIiLCJhcGlrZXkiOiJhYjYzMWUyYy05NGIxLTRmOGUtYTYxZS04Y2Y0MDJiMjY2OWIiLCJjb21tdW5pdHlfc3VwcG9ydGVkIjpmYWxzZSwiZXhwIjoxNzMzNTQ4MDIxLCJnZW5kZXIiOiIiLCJoaXRzX3Blcl9kYXkiOjEwMDAwMDAwMCwiaGl0c19wZXJfbW9udGgiOjEwMDAwMDAwMCwiaWQiOiIyNjgzMjU1IiwiaXNfbW9kIjpmYWxzZSwiaXNfc3lzdGVtX2tleSI6ZmFsc2UsImlzX3RydXN0ZWQiOmZhbHNlLCJwaW4iOiIxcTJ3M2U0ciIsInJvbGVzIjpbXSwidGVuYW50IjoidHZkYiIsInV1aWQiOiIifQ.SPvJmgzZq6dSHVL8IB0UAEgnZuQnzNpkgP6ijkln1r0a2A3IZBjnn77EJ67iIdbfCceT0Rsg-Eva6FU7aY0ArAVE5BOaKP5B88AEFNW2zQQFaZnGU7-0ZIB3mDLeVr3pRXYXjugsfmuatWzPquF5kJrCuOoF9ZRWakQN1aaQ621_KJN-VgMYw7FOpxqsSzJo4yVNUVKnX3Nyo05TYIwqzZkiORYMmhKip2qpoMjaDfbJRIURYt9YYIXnKYf887FG7cUzLPyoqCaQdTRHkgdjtfZ8po1f7P_OJYrpvEImATBNoFYdaEqUwY8k7QQ4k3iaITmufuOH7LxtNwZVhvgl3D3yOJA0Zxk3yEMsNptZkreM5NvrRgS7voslMBsQR-q4zfsckSYq0jfheKPxm0CzZZk-OngCw3TD5qMEVqQVwat9lYASzw1iHGy3FNga7E71MjMJgLV_TTX182KKRRRnYD6B2rkUE-r9sFtYFYZ4ZYBta_BJv6urfdvb391LZrYeHHA3D9w7EhmbxQOoYO4ixZDyPYqZb5MfZ5Q6EL6-YgRoZxOS5bUkC8GK5Jxt0_sUV24bUTMbzgC1rHGAfEMBwTOLRgpAvdCO2Wo3K-nLpCcGadjhRJ2Qco2SixaLFc0Qqk-arFR0LKIyLZOfZywIvzFMRbvUcIZRl3dfwpSMEmk',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllGenders',
      apiUrl: '${baseUrl}/genders',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllGenresCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllGenres',
      apiUrl: '${baseUrl}/genres',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetGenreBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getGenreBase',
      apiUrl: '${baseUrl}/genres/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllInspirationTypesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllInspirationTypes',
      apiUrl: '${baseUrl}/inspiration/types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllLanguagesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllLanguages',
      apiUrl: '${baseUrl}/languages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllListsCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllLists',
      apiUrl: '${baseUrl}/lists',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getList',
      apiUrl: '${baseUrl}/lists/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListBySlugCall {
  Future<ApiCallResponse> call({
    String? slug = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getListBySlug',
      apiUrl: '${baseUrl}/lists/slug/${slug}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getListExtended',
      apiUrl: '${baseUrl}/lists/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListTranslationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? language = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getListTranslation',
      apiUrl: '${baseUrl}/lists/${id}/translations/${language}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllMovieCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? bearerAuth =
        'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZ2UiOiIiLCJhcGlrZXkiOiJhYjYzMWUyYy05NGIxLTRmOGUtYTYxZS04Y2Y0MDJiMjY2OWIiLCJjb21tdW5pdHlfc3VwcG9ydGVkIjpmYWxzZSwiZXhwIjoxNzMzNTQ4MDIxLCJnZW5kZXIiOiIiLCJoaXRzX3Blcl9kYXkiOjEwMDAwMDAwMCwiaGl0c19wZXJfbW9udGgiOjEwMDAwMDAwMCwiaWQiOiIyNjgzMjU1IiwiaXNfbW9kIjpmYWxzZSwiaXNfc3lzdGVtX2tleSI6ZmFsc2UsImlzX3RydXN0ZWQiOmZhbHNlLCJwaW4iOiIxcTJ3M2U0ciIsInJvbGVzIjpbXSwidGVuYW50IjoidHZkYiIsInV1aWQiOiIifQ.SPvJmgzZq6dSHVL8IB0UAEgnZuQnzNpkgP6ijkln1r0a2A3IZBjnn77EJ67iIdbfCceT0Rsg-Eva6FU7aY0ArAVE5BOaKP5B88AEFNW2zQQFaZnGU7-0ZIB3mDLeVr3pRXYXjugsfmuatWzPquF5kJrCuOoF9ZRWakQN1aaQ621_KJN-VgMYw7FOpxqsSzJo4yVNUVKnX3Nyo05TYIwqzZkiORYMmhKip2qpoMjaDfbJRIURYt9YYIXnKYf887FG7cUzLPyoqCaQdTRHkgdjtfZ8po1f7P_OJYrpvEImATBNoFYdaEqUwY8k7QQ4k3iaITmufuOH7LxtNwZVhvgl3D3yOJA0Zxk3yEMsNptZkreM5NvrRgS7voslMBsQR-q4zfsckSYq0jfheKPxm0CzZZk-OngCw3TD5qMEVqQVwat9lYASzw1iHGy3FNga7E71MjMJgLV_TTX182KKRRRnYD6B2rkUE-r9sFtYFYZ4ZYBta_BJv6urfdvb391LZrYeHHA3D9w7EhmbxQOoYO4ixZDyPYqZb5MfZ5Q6EL6-YgRoZxOS5bUkC8GK5Jxt0_sUV24bUTMbzgC1rHGAfEMBwTOLRgpAvdCO2Wo3K-nLpCcGadjhRJ2Qco2SixaLFc0Qqk-arFR0LKIyLZOfZywIvzFMRbvUcIZRl3dfwpSMEmk',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllMovie',
      apiUrl: '${baseUrl}/movies',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMovieBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMovieBase',
      apiUrl: '${baseUrl}/movies/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMovieExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? meta = '',
    bool? short,
    String? bearerAuth =
        'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhZ2UiOiIiLCJhcGlrZXkiOiJhYjYzMWUyYy05NGIxLTRmOGUtYTYxZS04Y2Y0MDJiMjY2OWIiLCJjb21tdW5pdHlfc3VwcG9ydGVkIjpmYWxzZSwiZXhwIjoxNzMzNTQ4MDIxLCJnZW5kZXIiOiIiLCJoaXRzX3Blcl9kYXkiOjEwMDAwMDAwMCwiaGl0c19wZXJfbW9udGgiOjEwMDAwMDAwMCwiaWQiOiIyNjgzMjU1IiwiaXNfbW9kIjpmYWxzZSwiaXNfc3lzdGVtX2tleSI6ZmFsc2UsImlzX3RydXN0ZWQiOmZhbHNlLCJwaW4iOiIxcTJ3M2U0ciIsInJvbGVzIjpbXSwidGVuYW50IjoidHZkYiIsInV1aWQiOiIifQ.SPvJmgzZq6dSHVL8IB0UAEgnZuQnzNpkgP6ijkln1r0a2A3IZBjnn77EJ67iIdbfCceT0Rsg-Eva6FU7aY0ArAVE5BOaKP5B88AEFNW2zQQFaZnGU7-0ZIB3mDLeVr3pRXYXjugsfmuatWzPquF5kJrCuOoF9ZRWakQN1aaQ621_KJN-VgMYw7FOpxqsSzJo4yVNUVKnX3Nyo05TYIwqzZkiORYMmhKip2qpoMjaDfbJRIURYt9YYIXnKYf887FG7cUzLPyoqCaQdTRHkgdjtfZ8po1f7P_OJYrpvEImATBNoFYdaEqUwY8k7QQ4k3iaITmufuOH7LxtNwZVhvgl3D3yOJA0Zxk3yEMsNptZkreM5NvrRgS7voslMBsQR-q4zfsckSYq0jfheKPxm0CzZZk-OngCw3TD5qMEVqQVwat9lYASzw1iHGy3FNga7E71MjMJgLV_TTX182KKRRRnYD6B2rkUE-r9sFtYFYZ4ZYBta_BJv6urfdvb391LZrYeHHA3D9w7EhmbxQOoYO4ixZDyPYqZb5MfZ5Q6EL6-YgRoZxOS5bUkC8GK5Jxt0_sUV24bUTMbzgC1rHGAfEMBwTOLRgpAvdCO2Wo3K-nLpCcGadjhRJ2Qco2SixaLFc0Qqk-arFR0LKIyLZOfZywIvzFMRbvUcIZRl3dfwpSMEmk',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMovieExtended',
      apiUrl: '${baseUrl}/movies/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'meta': meta,
        'short': short,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMoviesFilterCall {
  Future<ApiCallResponse> call({
    String? company = '',
    String? contentRating = '',
    String? country = '',
    String? genre = '',
    String? lang = '',
    String? sort = '',
    String? status = '',
    String? year = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMoviesFilter',
      apiUrl: '${baseUrl}/movies/filter',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'company': company,
        'contentRating': contentRating,
        'country': country,
        'genre': genre,
        'lang': lang,
        'sort': sort,
        'status': status,
        'year': year,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMovieBaseBySlugCall {
  Future<ApiCallResponse> call({
    String? slug = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMovieBaseBySlug',
      apiUrl: '${baseUrl}/movies/slug/${slug}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMovieTranslationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? language = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMovieTranslation',
      apiUrl: '${baseUrl}/movies/${id}/translations/${language}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllMovieStatusesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllMovieStatuses',
      apiUrl: '${baseUrl}/movies/statuses',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPeopleCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllPeople',
      apiUrl: '${baseUrl}/people',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPeopleBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPeopleBase',
      apiUrl: '${baseUrl}/people/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPeopleExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? meta = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPeopleExtended',
      apiUrl: '${baseUrl}/people/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'meta': meta,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPeopleTranslationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? language = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getPeopleTranslation',
      apiUrl: '${baseUrl}/people/${id}/translations/${language}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllPeopleTypesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllPeopleTypes',
      apiUrl: '${baseUrl}/people/types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSearchResultsCall {
  Future<ApiCallResponse> call({
    String? query = '',
    String? q = '',
    String? type = '',
    String? year = '',
    String? company = '',
    String? country = '',
    String? director = '',
    String? language = '',
    String? primaryType = '',
    String? network = '',
    String? remoteId = '',
    String? offset = '',
    String? limit = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSearchResults',
      apiUrl: '${baseUrl}/search',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'query': query,
        'q': q,
        'type': type,
        'year': year,
        'company': company,
        'country': country,
        'director': director,
        'language': language,
        'primaryType': primaryType,
        'network': network,
        'remote_id': remoteId,
        'offset': offset,
        'limit': limit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSearchResultsByRemoteIdCall {
  Future<ApiCallResponse> call({
    String? remoteId = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSearchResultsByRemoteId',
      apiUrl: '${baseUrl}/search/remoteid/${remoteId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllSeasonsCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllSeasons',
      apiUrl: '${baseUrl}/seasons',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeasonBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeasonBase',
      apiUrl: '${baseUrl}/seasons/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeasonExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeasonExtended',
      apiUrl: '${baseUrl}/seasons/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeasonTypesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeasonTypes',
      apiUrl: '${baseUrl}/seasons/types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeasonTranslationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? language = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeasonTranslation',
      apiUrl: '${baseUrl}/seasons/${id}/translations/${language}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllSeriesCall {
  Future<ApiCallResponse> call({
    String? page = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllSeries',
      apiUrl: '${baseUrl}/series',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesBaseCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesBase',
      apiUrl: '${baseUrl}/series/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesArtworksCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? lang = '',
    int? type,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesArtworks',
      apiUrl: '${baseUrl}/series/${id}/artworks',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'lang': lang,
        'type': type,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesNextAiredCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesNextAired',
      apiUrl: '${baseUrl}/series/${id}/nextAired',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesExtendedCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? meta = '',
    bool? short,
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesExtended',
      apiUrl: '${baseUrl}/series/${id}/extended',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'meta': meta,
        'short': short,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesEpisodesCall {
  Future<ApiCallResponse> call({
    int? page,
    String? id = '',
    String? seasonType = '',
    int? season,
    int? episodeNumber,
    String? airDate = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesEpisodes',
      apiUrl: '${baseUrl}/series/${id}/episodes/${seasonType}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
        'season': season,
        'episodeNumber': episodeNumber,
        'airDate': airDate,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesSeasonEpisodesTranslatedCall {
  Future<ApiCallResponse> call({
    int? page,
    String? id = '',
    String? seasonType = '',
    String? lang = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesSeasonEpisodesTranslated',
      apiUrl: '${baseUrl}/series/${id}/episodes/${seasonType}/${lang}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesFilterCall {
  Future<ApiCallResponse> call({
    String? company = '',
    String? contentRating = '',
    String? country = '',
    String? genre = '',
    String? lang = '',
    String? sort = '',
    String? sortType = '',
    String? status = '',
    String? year = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesFilter',
      apiUrl: '${baseUrl}/series/filter',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'company': company,
        'contentRating': contentRating,
        'country': country,
        'genre': genre,
        'lang': lang,
        'sort': sort,
        'sortType': sortType,
        'status': status,
        'year': year,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesBaseBySlugCall {
  Future<ApiCallResponse> call({
    String? slug = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesBaseBySlug',
      apiUrl: '${baseUrl}/series/slug/${slug}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetSeriesTranslationCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? language = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getSeriesTranslation',
      apiUrl: '${baseUrl}/series/${id}/translations/${language}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllSeriesStatusesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllSeriesStatuses',
      apiUrl: '${baseUrl}/series/statuses',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllSourceTypesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getAllSourceTypes',
      apiUrl: '${baseUrl}/sources/types',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdatesCall {
  Future<ApiCallResponse> call({
    String? since = '',
    String? type = '',
    String? action = '',
    String? page = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'updates',
      apiUrl: '${baseUrl}/updates',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {
        'since': since,
        'type': type,
        'action': action,
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserInfoCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserInfo',
      apiUrl: '${baseUrl}/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserInfoByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserInfoById',
      apiUrl: '${baseUrl}/user/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserFavoritesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getUserFavorites',
      apiUrl: '${baseUrl}/user/favorites',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateUserFavoritesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = TvdbApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
""''';
    return ApiManager.instance.makeApiCall(
      callName: 'createUserFavorites',
      apiUrl: '${baseUrl}/user/favorites',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearerAuth}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TVDB API Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
