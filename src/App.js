import { Provider } from 'react-redux';

import './App.scss';
import Header from './components/header/Header';
import store from './redux/store';

function App() {
  return (
    <Provider store={store}>
      <Header />
      <h1>Hello</h1>
    </Provider>
  );
}

export default App;
