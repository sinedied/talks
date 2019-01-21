// -- Actions -------------------------------------------------

function updateContent(content) {
  return {
    type: 'Update content',
    content
  };
}

function loadContent() {
  return (dispatch) => {
    setTimeout(
      () => dispatch(updateContent('Hello async')),
      1000
    );
  };
}

// -- Reducer -------------------------------------------------
	
const initialState = { content: 'Hello?' };

function editorApp(previousState = initialState, action) {
	switch(action.type) {
		case 'Update content':
			return {
				...previousState,
				content: action.content
			}
		default:
			return previousState;
	}
}

// -- Store ---------------------------------------------------

function createStore(reducer) {
  let _state = reducer(undefined, '@@INIT');
  let _observer = null;
  let store = {
    getState: () => _state,
    subscribe: observer => {
      _observer = observer;
      if (_observer) _observer(_state);
    },
    dispatch: action => {
      if (typeof action === 'function')
        return action(store.dispatch);
      _state = reducer(_state, action);
      if (_observer) _observer(_state);
    }
  };
  return store;
}

// -- Example usage -------------------------------------------

const store = createStore(editorApp);

store.subscribe(state => {
	console.log(state.content);
});

store.dispatch(loadContent())
store.dispatch(updateContent('Hello SnowCamp!'))
