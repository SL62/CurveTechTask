import UIKit

class MovieTableViewCell: UITableViewCell {

    struct ViewState {
        let title: String
        let overview: String
    }

    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()

    private let overviewLabel: UILabel = {
        let overviewLabel = UILabel()
        overviewLabel.translatesAutoresizingMaskIntoConstraints = false
        return overviewLabel
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        [titleLabel, overviewLabel].forEach(contentView.addSubview)
        setupConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])

        NSLayoutConstraint.activate([
            overviewLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            overviewLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            overviewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            overviewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }

    func updateView(_ viewState: ViewState) {
        titleLabel.text = viewState.title
        overviewLabel.text = viewState.overview
    }
}
