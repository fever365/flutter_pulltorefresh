/*
 * Author: Jpeng
 * Email: peng8350@gmail.com
 * Time:  2019-09-06 23:18
 */

import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import '../../l10n/main_local.dart';

/// 对 [AppLocalizationsPulltorefresh] 的向后兼容包装器
/// 同时也定义了旧版本需要的 RefreshString 接口
class RefreshLocalizations {
  final AppLocalizationsPulltorefresh? _inner;

  RefreshLocalizations(this._inner);

  static LocalizationsDelegate<AppLocalizationsPulltorefresh> get delegate =>
      AppLocalizationsPulltorefresh.delegate;

  /// 这里返回封装后的 RefreshString，以兼容旧代码
  static RefreshString? of(BuildContext context) {
    final inner = AppLocalizationsPulltorefresh.of(context);
    if (inner == null) return null;
    return RefreshStringWrapper(inner);
  }

  String? get idleRefreshText => _inner?.idleRefreshText;
  String? get canRefreshText => _inner?.canRefreshText;
  String? get refreshingText => _inner?.refreshingText;
  String? get refreshCompleteText => _inner?.refreshCompleteText;
  String? get refreshFailedText => _inner?.refreshFailedText;
  String? get canTwoLevelText => _inner?.canTwoLevelText;
  String? get idleLoadingText => _inner?.idleLoadingText;
  String? get canLoadingText => _inner?.canLoadingText;
  String? get loadingText => _inner?.loadingText;
  String? get loadFailedText => _inner?.loadFailedText;
  String? get noMoreText => _inner?.noMoreText;

  /// 获取当前翻译实例
  AppLocalizationsPulltorefresh? get currentLocalization => _inner;

  /// 兼容旧代码：获取特定语言的翻译
  static RefreshString getValues(Locale locale) {
    return RefreshStringWrapper(lookupAppLocalizationsPulltorefresh(locale));
  }
}

/// 增加一个对 AppLocalizationsPulltorefresh 的扩展，以支持 .currentLocalization
/// 这样旧代码 (RefreshLocalizations.of(context)?.currentLocalization) 就能跑通
extension RefreshLocalizationsExtension on RefreshString {
  RefreshString get currentLocalization => this;
}

/// 保持 RefreshString 接口以供各 Indicator 使用
abstract class RefreshString {
  const RefreshString();

  String? get idleRefreshText;
  String? get canRefreshText;
  String? get refreshingText;
  String? get refreshCompleteText;
  String? get refreshFailedText;
  String? get canTwoLevelText;
  String? get idleLoadingText;
  String? get canLoadingText;
  String? get loadingText;
  String? get loadFailedText;
  String? get noMoreText;
}

/// 提供一个包装类，将 AppLocalizationsPulltorefresh 包装为 RefreshString
class RefreshStringWrapper extends RefreshString {
  final AppLocalizationsPulltorefresh inner;
  const RefreshStringWrapper(this.inner);

  @override
  String? get idleRefreshText => inner.idleRefreshText;
  @override
  String? get canRefreshText => inner.canRefreshText;
  @override
  String? get refreshingText => inner.refreshingText;
  @override
  String? get refreshCompleteText => inner.refreshCompleteText;
  @override
  String? get refreshFailedText => inner.refreshFailedText;
  @override
  String? get canTwoLevelText => inner.canTwoLevelText;
  @override
  String? get idleLoadingText => inner.idleLoadingText;
  @override
  String? get canLoadingText => inner.canLoadingText;
  @override
  String? get loadingText => inner.loadingText;
  @override
  String? get loadFailedText => inner.loadFailedText;
  @override
  String? get noMoreText => inner.noMoreText;
}

/// 为了兼容 ClassicIndicator 等直接调用 EnRefreshString() 的代码
class EnRefreshString extends RefreshStringWrapper {
  EnRefreshString() : super(lookupAppLocalizationsPulltorefresh(const Locale('en')));
}

class ChRefreshString extends RefreshStringWrapper {
  ChRefreshString() : super(lookupAppLocalizationsPulltorefresh(const Locale('zh')));
}

/// 旧版本的 Delegate 兼容
class RefreshLocalizationsDelegate extends LocalizationsDelegate<RefreshLocalizations> {
  const RefreshLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => AppLocalizationsPulltorefresh.delegate.isSupported(locale);

  @override
  Future<RefreshLocalizations> load(Locale locale) {
    return SynchronousFuture<RefreshLocalizations>(
        RefreshLocalizations(lookupAppLocalizationsPulltorefresh(locale)));
  }

  @override
  bool shouldReload(RefreshLocalizationsDelegate old) => false;
}
