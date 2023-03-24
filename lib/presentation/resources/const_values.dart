enum StateRendererType {
  // POPUP STATES
  POPUP_LOADING_STATE,
  POPUP_ERROR_STATE,
  POPUP_SERVER_ERROR_STATE,
  POPUP_SUCCESS,
  POPUP_FORM,
  // FULL SCREEN STATES
  FULL_SCREEN_LOADING_STATE,
  FULL_SCREEN_ERROR_STATE,
  FULL_SCREEN_FORM_STATE,
  CONTENT_SCREEN_STATE, // THE UI OF THE SCREEN
  EMPTY_SCREEN_STATE // EMPTY VIEW WHEN WE RECEIVE NO DATA FROM API SIDE FOR LIST SCREEN
}

const popStateRender = [
  StateRendererType.POPUP_LOADING_STATE,
  StateRendererType.POPUP_ERROR_STATE,
  StateRendererType.POPUP_SERVER_ERROR_STATE,
  StateRendererType.POPUP_SUCCESS,
  StateRendererType.POPUP_SUCCESS,
  StateRendererType.POPUP_FORM,
];
const fullStateRender = [
  StateRendererType.FULL_SCREEN_LOADING_STATE,
  StateRendererType.FULL_SCREEN_ERROR_STATE,
  StateRendererType.FULL_SCREEN_FORM_STATE,
  // StateRendererType.CONTENT_SCREEN_STATE, // THE UI OF THE SCREEN
  StateRendererType.EMPTY_SCREEN_STATE
];

const int integerInfinity = 2147483648;
const double doubleInfinity = double.infinity;
